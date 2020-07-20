import 'dart:convert';

class SocketRxMessageData {
  final bool fromCache;
  final DateTime time;
  final String raw;

  String get messageType => data['messageType'];
  final Map<String, dynamic> data;

  SocketRxMessageData(this.raw, {this.fromCache = false})
      : this.time = DateTime.now(),
        data = json.decode(raw);
}

abstract class SocketTxMessage {
  Map<String, dynamic> get data => {};

  final String messageType;
  final bool authRequired;
  final Duration cache;

  SocketTxMessage(this.messageType, {this.authRequired = true, this.cache});
}

abstract class SocketRxMessageSpec {
  final bool fireFromCache;
  final String messageType;
  final Duration cache;
  final List<String> cacheKeys;

  SocketRxMessageSpec(this.messageType, {this.fireFromCache = false, this.cache = Duration.zero, this.cacheKeys = const ['messageType']});
}
