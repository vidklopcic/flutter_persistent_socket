import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_connector.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/rx_messages.dart';
import 'package:flutter_persistent_socket/persistence/socket_rx_event.dart';
import 'package:gm5_utils/gm5_utils.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:gm5_utils/types/observable.dart';
import 'package:moor/moor.dart';

class SocketApi with SubscriptionsMixin {
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

  factory SocketApi(String address) {
    return _instances.putIfAbsent(address, () => SocketApi._internal(address));
  }

  SocketApi._internal(String address) {
    connection = SocketConnector(address);
    listen(connection.connected.changes, _connectionStateChange);
    listen(connection.dataStream, _onData);
    setMessages(rxMessages);
  }

  void setAuth(String token) {
    _token = token;
    authenticated.val = token != null;
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

  void sendMessage(SocketTxMessage message) {
    _txMessageHandlers[message.messageType]?.add(message);
    String msg = json.encode({
      'body': {
        'messageType': message.messageType,
        'eventTime': gm5Utils.secondsFromEpoch,
        'localTime': gm5Utils.secondsFromEpoch,
        ...message.data,
      },
      'headers': {
        'messageType': message.messageType,
        'authHeader': message.authRequired ? _token : null,
      }
    });
    print('txevent: $msg');
    try {
      connection.channel.sink.add(msg);
    } catch (e) {
      print('error sending $e');
      if (message.cache != Duration.zero) {
        print('caching event!');
        database.socketTxEventDao.addEvent(
          SocketTxEventsCompanion(
            jsonContent: Value(msg),
            expires: Value(
              DateTime.now().add(message.cache),
            ),
          ),
        );
      }
    }
  }

  void _onData(event) {
    print('rxevent: $event');
    SocketRxMessageData messageData = SocketRxMessageData(event, online: true);
    SocketRxMessage message = _messageConverters[messageData.messageType]?.fromMessage(messageData);
    if (message == null) return;
    _messageHandlers[messageData.messageType]?.add(message);
    if (message.cache != Duration.zero) {
      database.socketRxEventDao.cacheEvent(message);
    }
  }

  Stream getTxMessageHandler(SocketTxMessage message) {
    return _txMessageHandlers.putIfAbsent(message.messageType, () => StreamController.broadcast()).stream;
  }

  Stream getMessageHandler(SocketRxMessage message, {bool withoutCache = false, SocketRxMessageQueryFilter filter}) {
    _messageConverters.putIfAbsent(message.messageType, () => message);
    Stream stream = _messageHandlers
        .putIfAbsent(
            message.messageType,
            () => StreamController.broadcast(
                onListen: message.cache == Duration.zero ? null : () => fireFromCache(message, filter: filter)))
        .stream;
    if (withoutCache) {
      return stream.where((message) => (message as SocketRxMessage)?.message?.fromCache == false);
    }
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

  Future<int> fireFromCache(SocketRxMessage message, {SocketRxMessageQueryFilter filter}) async {
    SimpleSelectStatement<$SocketRxEventsTable, SocketRxEvent> query =
        (filter ?? (f) => f)(database.socketRxEventDao.filter(message));
    List<SocketRxEvent> events = await query.get();
    for (SocketRxEvent cachedEvent in events) {
      _messageHandlers[message.messageType].add(message.fromMessage(SocketRxMessageData.fromCachedEvent(cachedEvent)));
    }
    return events.length;
  }

  void close() {
    cancelSubscriptions();
    for (StreamController controller in _messageHandlers.values) {
      controller.close();
    }
    for (StreamController controller in _txMessageHandlers.values) {
      controller.close();
    }
    connection.close();
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
