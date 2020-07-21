import 'dart:async';
import 'dart:convert';

import 'package:flutter_persistent_socket/communication/socket_connector.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:gm5_utils/gm5_utils.dart';
import 'package:gm5_utils/types/observable.dart';
import 'package:moor/moor.dart';

class SocketApi {
  String _token;

  String get token => _token;
  SocketConnector connection;
  Observable<bool> authenticated = Observable(false);
  Map<String, StreamController<SocketRxMessage>> _messageHandlers = {};
  Map<String, SocketRxMessage> _messageConverters = {};

  SocketApi._([String address = 'wss://turing.si/ws']) {
    connection = SocketConnector(address);
    connection.connected.changes.listen(_connectionStateChange);
    connection.dataStream.listen(_onData);
  }

  void setAuth(String token) {
    _token = token;
    authenticated.val = token != null;
  }

  void sendMessage(SocketTxMessage message) {
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
      if (message.cache != null) {
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
    SocketRxMessageData message = SocketRxMessageData(event);
    _messageHandlers[message.messageType]?.add(_messageConverters[message.messageType].fromMessage(message));
  }

  Stream<SocketRxMessage> getMessageHandler(SocketRxMessage message, {void Function(SocketRxMessage) fromCache}) {
    _messageConverters.putIfAbsent(message.messageType, () => message);
    if (fromCache != null) {
      () async {
        for (SocketRxEvent cachedEvent in await database.socketRxEventDao.getEvents(message)) {
          fromCache(message.fromMessage(SocketRxMessageData.fromCachedEvent(cachedEvent)));
        }
      }();
    }
    return _messageHandlers.putIfAbsent(message.messageType, () => StreamController.broadcast()).stream;
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
}

SocketApi socketApi = SocketApi._();
