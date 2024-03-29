import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_connector.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart' as sre;
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/persistence/socket_rx_event.dart';
import 'package:flutter_persistent_socket/util.dart';
import 'package:gm5_utils/gm5_utils.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:gm5_utils/types/observable.dart';
import 'package:drift/drift.dart';
import '../messages.dart';

class SocketApi with SubscriptionsMixin, ChangeNotifier {
  bool noCache = false;
  bool logging = false;
  int retryCount = 0;
  static Map<String?, SocketApi> _instances = {};
  String? _token;
  String? _refreshToken;

  int apiVersion = 1;

  String? get token => _token;
  late SocketConnector connection;
  Observable<bool> authenticated = Observable(false);
  Map<String, StreamController<SocketTxMessage>> _txMessageHandlers = {};
  Map<String, StreamController<SocketRxMessage>> _messageHandlers = {};
  Map<String, SocketRxMessage> _messageConverters = {};

  FPSUtil util = FPSUtil();

  Future get whenAuthenticated async {
    if (authenticated.val!) {
      return;
    }
    await authenticated.changes.firstWhere((element) => element!);
  }

  factory SocketApi(String? address, {bool alwaysNew = false}) {
    if (alwaysNew) {
      return SocketApi._internal(address);
    } else {
      return _instances.putIfAbsent(address, () => SocketApi._internal(address));
    }
  }

  SocketApi._internal(String? address) {
    setMessages(rxMessages);
    if (address != null) {
      connection = SocketConnector(address);
      listen(connection.connected.changes, _connectionStateChange);
      listen(connection.dataStream, _onData);
      connection.addListener(_connectionChange);
    }
  }

  void _connectionChange() {
    notifyListeners();
  }

  void setAuth(String? token, [String? refreshToken]) {
    _token = token;
    _refreshToken = refreshToken;
    authenticated.val = token != null;
    notifyListeners();
  }

  void changeAddress(String address) {
    _instances.remove(connection.address);
    _instances[address] = this;
    cancelSubscriptions();
    connection.close();
    connection = SocketConnector(address);
    listen(connection.connected.changes, _connectionStateChange);
    listen(connection.dataStream, _onData);
  }

  Future<SocketApiTxStatus> _waitAck(String instanceUuid, Duration timeout) async {
    try {
      final msg = await getMessageHandler(
        RxAck(),
      ).where((event) => event.data.uuid == instanceUuid).first.timeout(timeout);
      final status = msg.data.hasErrorMessage() ? SocketApiAckStatus.messageError : SocketApiAckStatus.success;
      return SocketApiTxStatus(status, error: msg.data.errorCode, errorMessage: msg.data.errorMessage);
    } catch (e) {
      // timeout
      return SocketApiTxStatus(SocketApiAckStatus.timeout, errorMessage: 'No response from server.');
    }
  }

  Completer<bool>? _refreshingToken;

  Future<bool> refreshToken() async {
    if (!(_refreshingToken?.isCompleted ?? true)) {
      return await _refreshingToken!.future;
    }
    final refresh = _refreshToken;
    if (refresh == null || refresh.isEmpty) {
      return false;
    }
    _refreshingToken = Completer();
    _refreshToken = null;
    final response = await sendMessage(
      TxRefreshToken.create((data) => data..refreshToken = refresh),
      ack: true,
    );
    _refreshingToken!.complete(response.status == SocketApiAckStatus.success);
    return response.status == SocketApiAckStatus.success;
  }

  Future<SocketApiTxStatus> sendMessage(
    SocketTxMessage message, {
    bool ack = false,
    Duration timeout = const Duration(seconds: 10),
    bool cacheOnNack = true,
    bool cacheOnError = true,
    String? instanceUuid,
  }) async {
    _txMessageHandlers[message.messageType]?.add(message);
    final isCacheable = message.cache != Duration.zero && message.cache != null;

    instanceUuid ??= uuidObj.v4();
    String msg = json.encode({
      'body': message.data,
      'headers': {
        'messageType': message.messageType,
        'authHeader': _token,
        'eventTime': gm5Utils.secondsFromEpoch,
        'localTime': gm5Utils.secondsFromEpoch,
        'ack': ack,
        'retryCount': 0,
        'apiVersion': apiVersion,
        'uuid': instanceUuid,
      }
    });

    if (logging) print('txevent: $msg');

    // send event
    try {
      connection.channel?.sink.add(msg);
    } catch (e) {
      print('error sending $e');
      if (isCacheable) {
        if (logging) print('connection error - caching event!');
        if (!noCache) database.socketTxEventDao.cacheEvent(message, msg);
      }
      return SocketApiTxStatus(SocketApiAckStatus.connectionError, errorMessage: 'Error sending the message.');
    }

    SocketApiTxStatus status = SocketApiTxStatus(SocketApiAckStatus.success, errorMessage: '');

    if (ack) {
      // handle ack message
      status = await _waitAck(instanceUuid, timeout);

      if (isCacheable &&
          status.status != SocketApiAckStatus.success &&
          status.status != SocketApiAckStatus.messageError) {
        if (!noCache) database.socketTxEventDao.cacheEvent(message, msg);
      }
    }
    return status;
  }

  Future<T> fetch<T extends SocketRxMessage>(SocketTxMessage message, T result,
      {int timeoutMs = 10000, bool waitConnected = true}) async {
    if (waitConnected) {
      await connection.whenConnected;
    }

    var uuid = uuidObj.v4();

    // wait for response
    getMessageHandler(result)
        .where((e) => e.message.uuid == uuid)
        .timeout(Duration(milliseconds: timeoutMs))
        .listen((e) {
      result = e;
    }).onError((error) {
      if (this.logging) {
        print('fetch timeout $message $result');
      }
    });

    // send message
    var response = await this.sendMessage(
      message,
      ack: true,
      timeout: Duration(milliseconds: timeoutMs),
      instanceUuid: uuid,
    );
    if (response.status != SocketApiAckStatus.success) {
      throw response;
    }
    if (!result.message.online) {
      throw Exception('No response from server.');
    }

    return result;
  }

  void fireLocalUpdate(SocketRxMessage message) {
    message.message.online = false;
    _messageHandlers[message.messageType]?.add(message);
  }

  void _onData(event) {
    if (logging) print('rxevent: $event');
    SocketRxMessageData messageData = SocketRxMessageData(event, online: true);
    SocketRxMessage? message = _messageConverters[messageData.messageType]?.fromMessage(messageData);
    if (message == null) return; // todo proper logging
    _messageHandlers[messageData.messageType]?.add(message);
    if (message.cache != null && message.cache != Duration.zero) {
      if (!noCache) database.socketRxEventDao.cacheEvent(message);
    }
  }

  Stream getTxMessageHandler(SocketTxMessage message) {
    return _txMessageHandlers.putIfAbsent(message.messageType, () => StreamController.broadcast()).stream;
  }

  Stream<T> getMessageHandler<T extends SocketRxMessage>(T message) {
    _messageConverters.putIfAbsent(message.messageType, () => message);
    return _messageHandlers.putIfAbsent(message.messageType, () => StreamController<T>.broadcast()).stream as Stream<T>;
  }

  void setMessages(List<SocketRxMessage> messages) {
    for (SocketRxMessage message in messages) {
      _messageConverters[message.messageType] = message;
    }
  }

  void _connectionStateChange(bool connected) {}

  Future<bool> sendCached() async {
    return await _sendCached();
  }

  Future<bool> _sendCached() async {
    bool allWereSent = true;
    int offset = 0;
    List<SocketTxEvent> sentEvents = [];
    List<SocketTxEvent> cachedEvents = await database.socketTxEventDao.unhandledEvents(10, offset: offset);
    while (cachedEvents.length > 0) {
      if (!connection.connected.val!) break;
      for (SocketTxEvent event in cachedEvents) {
        try {
          Map<String, dynamic> content = json.decode(event.jsonContent);
          content['headers']['localTime'] = gm5Utils.secondsFromEpoch;
          content['headers']['retryCount'] ??= 0;
          content['headers']['retryCount']++;
          connection.channel?.sink.add(json.encode(content));
          if (content['headers']['ack'] != true) {
            sentEvents.add(event);
            continue;
          }
          // handle ack message
          final status = await _waitAck(content['headers']['uuid'], Duration(seconds: 10));
          if (status.status == SocketApiAckStatus.success ||
              status.status == SocketApiAckStatus.messageError ||
              (retryCount > 0 && content['headers']['retryCount'] > retryCount)) {
            // Delete even if status is error. Otherwise we risk backlog of malformed messages.
            sentEvents.add(event);
          } else {
            allWereSent = false;
            await database.socketTxEventDao.saveEvent(event.copyWith(jsonContent: json.encode(content)));
          }
        } catch (e) {
          print('error resending $e');
        }
      }
      offset += 10;
      cachedEvents = await database.socketTxEventDao.unhandledEvents(10, offset: offset);
    }
    print('successfully sent ${sentEvents.length} cached events');
    database.socketTxEventDao.deleteEvents(sentEvents);
    database.socketTxEventDao.deleteExpired();
    return allWereSent;
  }

  static SocketApi of(BuildContext context) {
    return (context.getElementForInheritedWidgetOfExactType<SocketApiProvider>()!.widget as SocketApiProvider)
        .socketApi;
  }

  Future<List<T>> getFromCache<T extends SocketRxMessage<TableT>, TableT, V extends sre.CacheKeys>(
    T message, {
    SocketRxMessageKeyedQueryFilter<SimpleSelectStatement<$SocketRxEventsTable, SocketRxEvent>, T>? filter,
    SocketRxMessageKeyedQueryFilterV1<SimpleSelectStatement<$SocketRxEventsTable, SocketRxEvent>, V>? filterV1,
    Expression<bool> Function(T)? where,
  }) async {
    if (message.cache == null || message.cache == Duration.zero) return [];

    SimpleSelectStatement<$SocketRxEventsTable, SocketRxEvent> query = database.socketRxEventDao.filter(message);

    final V? cacheKeys = message.cacheKeys as V?;
    if (cacheKeys != null) {
      message.setTable(query.table.asDslTable);
      if (where != null) {
        query.where((tbl) => where(message));
      }
      if (filterV1 != null) {
        query = filterV1(query, cacheKeys);
      }
      if (filter != null) {
        query = filter(query, message);
      }
    }

    final events = await query.get();
    List<T> parsedEvents = [];
    List<SocketRxEvent> invalidEvents = [];
    for (SocketRxEvent cachedEvent in events) {
      try {
        parsedEvents.add(message.fromMessage(SocketRxMessageData.fromCachedEvent(cachedEvent)) as T);
      } catch (e) {
        print('Exception while parsing cached rx message. Schema changed? ($e)');
        invalidEvents.add(cachedEvent);
      }
    }

    if (invalidEvents.isNotEmpty) {
      print('Deleting ${invalidEvents.length} invalid events.');
      database.socketRxEventDao.deleteEvents(invalidEvents);
    }

    return parsedEvents.cast<T>();
  }

  void fireFromCache<T extends SocketRxMessage>(List<T> messages) {
    for (SocketRxMessage cachedMsg in messages) {
      fireLocalUpdate(cachedMsg);
    }
  }

  void close() {
    connection.removeListener(_connectionChange);
    cancelSubscriptions();
    for (StreamController controller in _messageHandlers.values) {
      controller.close();
    }
    for (StreamController controller in _txMessageHandlers.values) {
      controller.close();
    }
    connection.close();
    _instances.remove(connection.address);
  }
}

class SocketApiProvider extends InheritedWidget {
  const SocketApiProvider({
    Key? key,
    required this.socketApi,
    required Widget child,
  }) : super(key: key, child: child);

  final SocketApi socketApi;

  @override
  bool updateShouldNotify(SocketApiProvider saProvider) => saProvider.socketApi != socketApi;
}

enum SocketApiAckStatus { success, connectionError, timeout, messageError }

class SocketApiTxStatus {
  final SocketApiAckStatus status;
  final int? error;
  final String? errorMessage;

  SocketApiTxStatus(this.status, {this.error, this.errorMessage});
}
