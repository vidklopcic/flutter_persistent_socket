import 'package:flutter_persistent_socket/communication/socket_messages.dart';

class RxLoginToken extends SocketRxMessage {
  static const String type = 'login-token';

  const RxLoginToken([SocketRxMessageData message])
      : super(type, message, cache: const Duration(days: 1460));

  @override
  RxLoginToken fromMessage(SocketRxMessageData message) => RxLoginToken(message);

  String get token => message['token'];
}

class RxLoginError extends SocketRxMessage {
  static const String type = 'login-error';

  const RxLoginError([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginError fromMessage(SocketRxMessageData message) => RxLoginError(message);

  String get errorText => message['error_text'];

  String get errorCode => message['error_code'];
}

class RxTokenInvalid extends SocketRxMessage {
  static const String type = 'token-invalid';

  const RxTokenInvalid([SocketRxMessageData message]) : super(type, message);

  @override
  RxTokenInvalid fromMessage(SocketRxMessageData message) => RxTokenInvalid(message);
}

class TxLogin extends SocketTxMessage {
  static const String type = 'login';
  final String username;
  final String password;

  const TxLogin({this.username, this.password}) : super(type, authRequired: false);

  @override
  Map<String, dynamic> get data => {'username': username, 'password': password};
}

class TxVerifyToken extends SocketTxMessage {
  static const String type = 'verify-token';

  TxVerifyToken(String messageType) : super(messageType);

  @override
  Map<String, dynamic> get data => {};
}
