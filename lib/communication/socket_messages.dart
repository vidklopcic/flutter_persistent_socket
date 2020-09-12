import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/components/authentication/authentication_messages.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/persistence/socket_rx_event.dart';
import 'package:moor/moor.dart';
import 'package:protobuf/protobuf.dart';

class SocketRxMessageData {
  final bool online;
  final bool fromCache;
  final DateTime time;
  final String raw;

  String get messageType => this['messageType'];
  final Map<String, dynamic> data;

  SocketRxMessageData(this.raw, {@required this.online, this.fromCache = false})
      : this.time = DateTime.now(),
        data = json.decode(raw);

  operator [](String key) => (data['body'] ?? data)[key];

  operator ==(Object other) => other is SocketRxMessageData && other.raw == raw;

  @override
  String toString() => raw;

  SocketRxMessageData.fromCachedEvent(SocketRxEvent event)
      : fromCache = true,
        online = event.online,
        time = event.timeReceived,
        raw = event.jsonContent,
        data = json.decode(event.jsonContent);

  @override
  int get hashCode => super.hashCode;
}

abstract class SocketTxMessage {
  final String messageType;
  final bool authRequired;
  final Duration cache;
  final GeneratedMessage proto = null;

  const SocketTxMessage(this.messageType, {this.authRequired = true, this.cache = Duration.zero});

  Map<String, dynamic> get data => proto?.writeToJsonMap() ?? {};
}

abstract class SocketRxMessage {
  final SocketRxMessageData message;
  final String messageType;
  final Duration cache;
  final CacheKeys cacheKeys;
  final GeneratedMessage data = null;

  String get cacheUuid => '${message.messageType}|${cacheKeys.keys.map((cacheKey) => message[cacheKey]).join('|')}';

  SocketRxMessage(this.messageType, this.message)
      : cache = null,
        cacheKeys = null {
    if (message != null && data != null) {
      data.mergeFromJsonMap(message.data);
    }
  }

  SocketRxMessage fromMessage(SocketRxMessageData message);

  dynamic getCacheVal(CacheKeyType type, int index) {
    String key = cacheKeys.getKey(type, index);
    if (key == null) return null;
    return message[key];
  }
}

/// CacheKeys usage example:
///
/// class RxLoginTokenKeys extends CacheKeys {
///   static const token = CacheKey(CacheKeyType.text, 0, 'token');
///
///   const RxLoginTokenKeys() : super(textKeys: const [token]);
/// }
///
/// class RxLoginToken extends SocketRxMessage {
///   static const String type = 'login-token';
///   final Duration cache = const Duration(days: 1460);
///   final RxLoginTokenKeys cacheKeys = const RxLoginTokenKeys();
///
///   const RxLoginToken([SocketRxMessageData message]) : super(type, message);
///
///   @override
///   RxLoginToken fromMessage(SocketRxMessageData message) => RxLoginToken(message);
///
///   String get token => message['token'];
/// }
///
/// RxLoginToken message = RxLoginToken();
/// socketApi.getMessageHandler(message, filter: (query) => query..where((tbl) => message.cacheKeys.token.textField(tbl).equals('value')));
/// socketApi.fireFromCache(message, filter: (query) => query..where((tbl) => message.cacheKeys.token.textField(tbl).equals('value')));
///

enum CacheKeyType { date, text, real }

class CacheKeys {
  final List<String> textKeys;
  final List<String> realKeys;
  final List<String> dateKeys;

  const CacheKeys({this.textKeys = const [], this.realKeys = const [], this.dateKeys = const []});

  List<String> get keys => textKeys + realKeys + dateKeys;

  String getKey(CacheKeyType type, int index) {
    switch (type) {
      case CacheKeyType.date:
        return dateKeys.length > index ? dateKeys[index] : null;
      case CacheKeyType.text:
        return textKeys.length > index ? textKeys[index] : null;
      case CacheKeyType.real:
        return realKeys.length > index ? realKeys[index] : null;
    }
    return null;
  }
}

class CacheKey {
  final int index;
  final CacheKeyType type;
  final String key;

  const CacheKey(this.type, this.index, this.key);

  GeneratedDateTimeColumn dateField($SocketRxEventsTable table) {
    assert(type == CacheKeyType.date);
    return table.dateKeys[index];
  }

  GeneratedTextColumn textField($SocketRxEventsTable table) {
    assert(type == CacheKeyType.text);
    return table.textKeys[index];
  }

  GeneratedRealColumn realField($SocketRxEventsTable table) {
    assert(type == CacheKeyType.real);
    return table.realKeys[index];
  }
}
