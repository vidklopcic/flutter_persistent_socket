import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'proto/authentication.pb.dart';
import 'proto/form_errors.pb.dart';
import 'proto/files.pb.dart';

class RxUploadProgress extends SocketRxMessage {
  static const String type = 'upload-progress';
  final UploadProgress data = UploadProgress();
  

  RxUploadProgress([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadProgress fromMessage(SocketRxMessageData message) => RxUploadProgress(message);
}


class TxVerifyToken extends SocketTxMessage {
  static const String type = 'verify-token';
  final VerifyToken proto;

  const TxVerifyToken(this.proto) : super(type, authRequired: false, cache: Duration.zero);
}

class RxUploadStartSlotCacheKeys extends CacheKeys {
  CacheKey localKey = CacheKey(CacheKeyType.text, 0, 'localKey');

  RxUploadStartSlotCacheKeys() : super(textKeys: ['localKey'], realKeys: [], dateKeys: []);
}

class RxUploadStartSlot extends SocketRxMessage {
  static const String type = 'upload-start';
  final UploadStartSlot data = UploadStartSlot();
  Duration cache = Duration(days: 365, hours: 0, minutes: 0, seconds: 0);
  final RxUploadStartSlotCacheKeys cacheKeys = RxUploadStartSlotCacheKeys();

  RxUploadStartSlot([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadStartSlot fromMessage(SocketRxMessageData message) => RxUploadStartSlot(message);
}


class RxLoginToken extends SocketRxMessage {
  static const String type = 'login-token';
  final LoginToken data = LoginToken();
  Duration cache = Duration(days: 365, hours: 0, minutes: 0, seconds: 0);

  RxLoginToken([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginToken fromMessage(SocketRxMessageData message) => RxLoginToken(message);
}


class RxUploadDone extends SocketRxMessage {
  static const String type = 'upload-done';
  final UploadDone data = UploadDone();
  

  RxUploadDone([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadDone fromMessage(SocketRxMessageData message) => RxUploadDone(message);
}


class TxUploadStart extends SocketTxMessage {
  static const String type = 'upload-start';
  final UploadStart proto;

  const TxUploadStart(this.proto) : super(type, authRequired: true, cache: Duration.zero);
}


class TxLogin extends SocketTxMessage {
  static const String type = 'login';
  final Login proto;

  const TxLogin(this.proto) : super(type, authRequired: false, cache: Duration.zero);
}


class RxFormErrors extends SocketRxMessage {
  static const String type = 'form-errors';
  final FormErrors data = FormErrors();
  

  RxFormErrors([SocketRxMessageData message]) : super(type, message);

  @override
  RxFormErrors fromMessage(SocketRxMessageData message) => RxFormErrors(message);
}


class RxLoginError extends SocketRxMessage {
  static const String type = 'login-error';
  final LoginError data = LoginError();
  

  RxLoginError([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginError fromMessage(SocketRxMessageData message) => RxLoginError(message);
}


class TxUploadEnd extends SocketTxMessage {
  static const String type = 'upload-end';
  final UploadEnd proto;

  const TxUploadEnd(this.proto) : super(type, authRequired: true, cache: Duration.zero);
}


class TxDeleteFile extends SocketTxMessage {
  static const String type = 'delete-file';
  final DeleteFile proto;

  const TxDeleteFile(this.proto) : super(type, authRequired: false, cache: Duration.zero);
}


class RxTokenInvalid extends SocketRxMessage {
  static const String type = 'token-invalid';
  final TokenInvalid data = TokenInvalid();
  

  RxTokenInvalid([SocketRxMessageData message]) : super(type, message);

  @override
  RxTokenInvalid fromMessage(SocketRxMessageData message) => RxTokenInvalid(message);
}


List<SocketRxMessage> rxMessages = [
  RxUploadProgress(),
  RxUploadStartSlot(),
  RxLoginToken(),
  RxUploadDone(),
  RxFormErrors(),
  RxLoginError(),
  RxTokenInvalid()
];