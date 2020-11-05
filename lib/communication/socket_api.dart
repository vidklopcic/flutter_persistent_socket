import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_connector.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/persistence/socket_rx_event.dart';
import 'package:gm5_utils/gm5_utils.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:gm5_utils/types/observable.dart';
import 'package:moor/moor.dart';

import '../messages.dart';

class SocketApi with SubscriptionsMixin, ChangeNotifier {
  static Map<String, SocketApi> _instances = {};
  String _token;

  String get token => _token;
  SocketConnector connection;
  Observable<bool> authenticated = Observable(false);
  Map<String, StreamController<SocketTxMessage>> _txMessageHandlers = {};
  Map<String, StreamController<SocketRxMessage>> _messageHandlers = {};
  Map<String, SocketRxMessage> _messageConverters = {};

  Future get whenAuthenticated async {
    if (authenticated.val) {
      return;
    }
    await authenticated.changes.firstWhere((element) => element);
  }

  factory SocketApi(String address, {bool alwaysNew=false}) {
    if (alwaysNew) {
      return SocketApi._internal(address);
    } else {
      return _instances.putIfAbsent(address, () => SocketApi._internal(address));
    }
  }

  SocketApi._internal(String address) {
    connection = SocketConnector(address);
    listen(connection.connected.changes, _connectionStateChange);
    listen(connection.dataStream, _onData);
    setMessages(rxMessages);
    connection.addListener(_connectionChange);
  }

  void _connectionChange() {
    notifyListeners();
  }

  void setAuth(String token) {
    bool changed = _token != token;
    _token = token;
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

  bool sendMessage(SocketTxMessage message) {
    _txMessageHandlers[message.messageType]?.add(message);
    String msg = json.encode({
      'body': message.data,
      'headers': {
        'messageType': message.messageType,
        'authHeader': message.authRequired ? _token : null,
        'eventTime': gm5Utils.secondsFromEpoch,
        'localTime': gm5Utils.secondsFromEpoch,
      }
    });
    print('txevent: $msg');
    try {
      connection.channel.sink.add(msg);
    } catch (e) {
      print('error sending $e');
      if (message.cache != Duration.zero && message.cache != null) {
        print('caching event!');
        database.socketTxEventDao.cacheEvent(message, msg);
      }
      return false;
    }
    return true;
  }

  void fireLocalUpdate(SocketRxMessage message) {
    message.message.online = false;
    _messageHandlers[message.messageType].add(message);
  }

  void _onData(event) {
    print('rxevent: $event');
    SocketRxMessageData messageData = SocketRxMessageData(event, online: true);
    SocketRxMessage message = _messageConverters[messageData.messageType]?.fromMessage(messageData);
    if (message == null) return; // todo proper logging
    _messageHandlers[messageData.messageType]?.add(message);
    if (message.cache != null && message.cache != Duration.zero) {
      database.socketRxEventDao.cacheEvent(message);
    }
  }

  Stream getTxMessageHandler(SocketTxMessage message) {
    return _txMessageHandlers.putIfAbsent(message.messageType, () => StreamController.broadcast()).stream;
  }

  Stream getMessageHandler<T extends SocketRxMessage>(T message) {
    _messageConverters.putIfAbsent(message.messageType, () => message);
    Stream<T> stream = _messageHandlers.putIfAbsent(message.messageType, () => StreamController<T>.broadcast()).stream;
    return stream;
  }

  void setMessages(List<SocketRxMessage> messages) {
    for (SocketRxMessage message in messages) {
      _messageConverters[message.messageType] = message;
    }
  }

  void _connectionStateChange(bool connected) {
    if (connected) _sendCached();
  }

  Future _sendCached() async {
    int offset = 0;
    List<SocketTxEvent> sentEvents = [];
    List<SocketTxEvent> cachedEvents = await database.socketTxEventDao.unhandledEvents(10, offset: offset);
    while (cachedEvents.length > 0) {
      if (!connection.connected.val) break;
      for (SocketTxEvent event in cachedEvents) {
        try {
          Map<String, dynamic> content = json.decode(event.jsonContent);
          content['body']['localTime'] = gm5Utils.secondsFromEpoch;
          connection.channel.sink.add(json.encode(content));
          sentEvents.add(event);
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
  }

  static SocketApi of(BuildContext context) {
    return (context.getElementForInheritedWidgetOfExactType<SocketApiProvider>().widget as SocketApiProvider).socketApi;
  }

  Future<int> fireFromCache(SocketRxMessage message,
      {SocketRxMessageQueryFilter<SimpleSelectStatement<$SocketRxEventsTable, SocketRxEvent>> filter}) async {
    SimpleSelectStatement<$SocketRxEventsTable, SocketRxEvent> query =
        (filter ?? (f) => f)(database.socketRxEventDao.filter(message));
    List<SocketRxEvent> events = await query.get();
    for (SocketRxEvent cachedEvent in events) {
      try {
        final msg = message.fromMessage(SocketRxMessageData.fromCachedEvent(cachedEvent));
        _messageHandlers[message.messageType].add(msg);
      } catch (e) {
        print('Exception while parsing cached rx message. Schema changed?');
      }
    }
    return events.length;
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
    Key key,
    @required this.socketApi,
    @required Widget child,
  })  : assert(socketApi != null),
        assert(child != null),
        super(key: key, child: child);

  final SocketApi socketApi;

  @override
  bool updateShouldNotify(SocketApiProvider saProvider) => saProvider.socketApi != socketApi;
}
