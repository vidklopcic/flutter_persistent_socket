import 'dart:convert';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/persistence/socket_rx_event.dart';
import 'package:drift/drift.dart';
import 'package:protobuf/protobuf.dart';

class SocketRxMessageData {
  /// if message was retrieved from cache, this variable will store its original db id
  String? cacheUuid;

  bool get fromCache => cacheUuid != null;

  /// Indicates if the message was modified locally (set to `false` when calling `save()` on the `SocketRxMessage`).
  bool online;

  /// Date and time of reception or modification
  DateTime time;

  /// Raw JSON string
  String get raw => _raw ?? '{}';

  set raw(String? newRaw) {
    _raw = newRaw;
    data = json.decode(raw);
    time = DateTime.now();
  }

  String? _raw;

  /// Tries to find the `messageType` attribute. There are two possible locations in order to be compatible
  /// with skljoc
  String get messageType => data['headers']['messageType'] ?? data['messageType'];

  String? get uuid => data['headers']['uuid'];

  /// Decoded JSON map.
  Map<String, dynamic> data;

  SocketRxMessageData(this._raw, {required this.online, this.cacheUuid})
      : this.time = DateTime.now(),
        this.data = json.decode(_raw ?? '{}');

  /// There can be two location of the body in order to be compatible with skljoc.
  Map<String, dynamic> get body => data['body'] ?? data;

  /// Messages are equal if raw string is exactly the same
  operator ==(Object other) => other is SocketRxMessageData && other.raw == raw;

  @override
  String toString() => raw;

  SocketRxMessageData.fromCachedEvent(SocketRxEvent event)
      : cacheUuid = event.uuid,
        online = event.online,
        time = event.timeReceived,
        _raw = event.jsonContent,
        data = json.decode(event.jsonContent);

  @override
  int get hashCode => super.hashCode;
}

abstract class SocketTxMessage {
  final String messageType;

  /// If set to `true`, SocketApi will attach the `authHeader`, if we are authenticated
  final bool authRequired;

  /// If sending failed, cache the message for this duration and try to send it when reconnected.
  final Duration? cache;
  final GeneratedMessage? proto = null;

  final CacheKeys? cacheKeys;

  String get cacheUuid => cacheKeys == null
      ? uuidObj.v4()
      : '$messageType${'|' + cacheKeys!.keys.map((cacheKey) => this[cacheKey]).join('|')}';

  const SocketTxMessage(this.messageType, {this.authRequired = true})
      : cacheKeys = null,
        cache = null;

  Map<String, dynamic> get data => (proto?.toProto3Json() ?? {}) as Map<String, dynamic>;

  /// Returns the value from the `GeneratedMessage data` based on a string key (`null` if the field does not exist).
  @override
  dynamic operator [](String key) {
    int? tag = proto!.getTagNumber(key);
    if (tag == null) return null;
    return proto!.getField(tag);
  }

  /// Returns the value from the `data` field based on the cache key.
  dynamic getCacheVal(CacheKeyType type, int index) {
    String? key = cacheKeys?.getKey(type, index);
    if (key == null) return null;
    final field = proto!.getField(proto!.getTagNumber(key) ?? -1);
    if (field is ProtobufEnum) {
      return (field as ProtobufEnum).value.toDouble();
    }
    if (type == CacheKeyType.real) return field?.toDouble();
    if (type == CacheKeyType.int) return field?.toInt();
    return field;
  }
}

abstract class SocketRxMessage<TableT> {
  static bool proto2Compat = false;

  /// Wraps the raw JSON data received from the server and holds
  /// some metadata (eg. whether message originates from cache or from server).
  final SocketRxMessageData message;
  final String messageType;

  /// After the `cache` duration, the message gets removed from the cache.
  final Duration? cache;

  /// Provides a set of `real`, `date` and `text` keys that can be used to query and differentiate messages
  /// of the same type in the cache
  final CacheKeys? cacheKeys;

  /// Protobuf generated class that provides easier access to the data.
  final GeneratedMessage? data = null;

  /// returns the uuid that is assembled based on the contents of the `message` and keys
  /// specified in `cacheKeys` (eg. `<messageType>|<key1>|<key2>`). **When there is a clash,
  /// the old cached message gets overwritten**.
  String get cacheUuid =>
      '${messageType}${cacheKeys == null ? '' : '|' + cacheKeys!.keys.map((cacheKey) => this[cacheKey]).join('|')}';

  SocketRxMessage(this.messageType, SocketRxMessageData? message)
      : cache = null,
        cacheKeys = null,
        message = message ?? SocketRxMessageData(null, online: false) {
    if (message != null) {
      if (proto2Compat) {
        bool isOnlyDigits = true;
        for (String key in message.body.keys) {
          if (double.tryParse(key) is! double) {
            isOnlyDigits = false;
            break;
          }
        }
        if (isOnlyDigits) {
          data?.mergeFromJsonMap(message.body);
        } else {
          data?.mergeFromProto3Json(message.body);
        }
      } else {
        data?.mergeFromProto3Json(message.body, ignoreUnknownFields: true);
      }
    }
  }

  /// Returns the instance of the derived class (Dart doesn't allow us to create a new object of type T)
  SocketRxMessage fromMessage(SocketRxMessageData message);

  /// Returns the value from the `data` field based on the cache key.
  dynamic getCacheVal(CacheKeyType type, int index) {
    String? key = cacheKeys?.getKey(type, index);
    if (key == null) return null;
    final field = data?.getFieldOrNull(data?.getTagNumber(key) ?? -1);
    if (field == null) return null;
    if (field is ProtobufEnum) {
      return field.value.toDouble();
    }

    if (type == CacheKeyType.real) return field.toDouble();
    if (type == CacheKeyType.date) return DateTime.fromMillisecondsSinceEpoch(field.toInt());
    if (type == CacheKeyType.int) return field.toInt();
    return field;
  }

  /// Save local changes to the cache
  Future save({
    SocketApi? socketApi,
    bool removeOldIfUuidChanged = true,
  }) async {
    socketApi?.fireLocalUpdate(this);
    message.online = false;
    message.raw = jsonEncode(data?.toProto3Json());

    if (removeOldIfUuidChanged && message.cacheUuid != null && cacheUuid != message.cacheUuid) {
      await database.socketRxEventDao.invalidateCache(
        (q) => q..where((tbl) => tbl.uuid.equals(message.cacheUuid!)),
      );
      message.cacheUuid = cacheUuid;
    }

    return await database.socketRxEventDao.cacheEvent(this);
  }

  /// Returns the value from the `GeneratedMessage data` based on a string key (`null` if the field does not exist).
  @override
  dynamic operator [](String key) {
    int? tag = data?.getTagNumber(key);
    if (tag == null || !data!.hasField(tag)) return null;
    return data!.getField(tag);
  }

  void setTable(table) => throw UnimplementedError();
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

enum CacheKeyType { date, text, real, int }

class CacheKeys {
  final List<String> textKeys;
  final List<String> realKeys;
  final List<String> intKeys;
  final List<String> dateKeys;

  const CacheKeys({
    this.textKeys = const [],
    this.realKeys = const [],
    this.dateKeys = const [],
    this.intKeys = const [],
  });

  List<String> get keys => textKeys + realKeys + dateKeys + intKeys;

  String? getKey(CacheKeyType type, int index) {
    switch (type) {
      case CacheKeyType.date:
        return dateKeys.length > index ? dateKeys[index] : null;
      case CacheKeyType.text:
        return textKeys.length > index ? textKeys[index] : null;
      case CacheKeyType.real:
        return realKeys.length > index ? realKeys[index] : null;
      case CacheKeyType.int:
        return intKeys.length > index ? intKeys[index] : null;
    }
  }
}

class CacheKey {
  final int index;
  final CacheKeyType type;
  final String key;

  const CacheKey(this.type, this.index, this.key);

  DateTimeColumn dateField($SocketRxEventsTable table) {
    assert(type == CacheKeyType.date);
    return table.dateKeys[index];
  }

  TextColumn textField($SocketRxEventsTable table) {
    assert(type == CacheKeyType.text);
    return table.textKeys[index];
  }

  RealColumn realField($SocketRxEventsTable table) {
    assert(type == CacheKeyType.real);
    return table.realKeys[index];
  }

  IntColumn intField($SocketRxEventsTable table) {
    assert(type == CacheKeyType.int);
    return table.intKeys[index];
  }
}
