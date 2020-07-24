import 'dart:convert';

import 'package:flutter_persistent_socket/persistence/database.dart';

class SocketRxMessageData {
  final bool fromCache;
  final DateTime time;
  final String raw;

  String get messageType => this['messageType'];
  final Map<String, dynamic> data;

  SocketRxMessageData(this.raw, {this.fromCache = false})
      : this.time = DateTime.now(),
        data = json.decode(raw);

  operator [](String key) => data['body'][key];

  @override
  String toString() => raw;

  SocketRxMessageData.fromCachedEvent(SocketRxEvent event)
      : fromCache = true,
        time = event.timeReceived,
        raw = event.jsonContent,
        data = json.decode(event.jsonContent);
}

abstract class SocketTxMessage {
  Map<String, dynamic> get data;

  final String messageType;
  final bool authRequired;
  final Duration cache;

  const SocketTxMessage(this.messageType, {this.authRequired = true, this.cache=Duration.zero});
}

abstract class SocketRxMessage {
  final SocketRxMessageData message;
  final String messageType;
  final Duration cache;
  final List<String> cacheKeys;

  String get cacheUuid => cacheKeys.map((cacheKey) => message[cacheKey]).join('|');

  const SocketRxMessage(this.messageType, this.message,
      {this.cache = Duration.zero, this.cacheKeys = const ['messageType']});

  SocketRxMessage fromMessage(SocketRxMessageData message);
}
