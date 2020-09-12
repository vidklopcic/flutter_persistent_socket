import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:flutter_persistent_socket/proto/authentication.pb.dart';

class RxLoginToken extends SocketRxMessage {
  static const String type = 'login-token';
  final LoginToken data = LoginToken();
  final Duration cache = const Duration(days: 1460);

  RxLoginToken([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginToken fromMessage(SocketRxMessageData message) => RxLoginToken(message);

  String get token => message['token'];
}

class RxLoginError extends SocketRxMessage {
  static const String type = 'login-error';
  final LoginError data = LoginError();

  RxLoginError([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginError fromMessage(SocketRxMessageData message) => RxLoginError(message);
}

class RxTokenInvalid extends SocketRxMessage {
  static const String type = 'token-invalid';

  RxTokenInvalid([SocketRxMessageData message]) : super(type, message);

  @override
  RxTokenInvalid fromMessage(SocketRxMessageData message) => RxTokenInvalid(message);
}

class TxLogin extends SocketTxMessage {
  static const String type = 'login';
  final Login proto;

  TxLogin(this.proto) : super(type, authRequired: false);
}

class TxVerifyToken extends SocketTxMessage {
  static const String type = 'verify-token';
  final VerifyToken proto;

  TxVerifyToken(this.proto) : super(type);
}
