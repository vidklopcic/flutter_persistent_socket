import 'proto/form_errors.pb.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'proto/authentication.pb.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'proto/sfiles.pb.dart';

class TxLogin extends SocketTxMessage {
  static const String type = 'login';
  final Login proto;

  const TxLogin([this.proto]) : super(type, authRequired: false, cache: Duration.zero);
  
  static Login get newProto => Login();
}


class RxUploadProgress extends SocketRxMessage {
  static const String type = 'upload-progress';
  final UploadProgress data = UploadProgress();
  

  RxUploadProgress([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadProgress fromMessage(SocketRxMessageData message) => RxUploadProgress(message);
}


class RxTokenInvalid extends SocketRxMessage {
  static const String type = 'token-invalid';
  final TokenInvalid data = TokenInvalid();
  

  RxTokenInvalid([SocketRxMessageData message]) : super(type, message);

  @override
  RxTokenInvalid fromMessage(SocketRxMessageData message) => RxTokenInvalid(message);
}


class RxLoginToken extends SocketRxMessage {
  static const String type = 'login-token';
  final LoginToken data = LoginToken();
  Duration cache = Duration(days: 365, hours: 0, minutes: 0, seconds: 0);

  RxLoginToken([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginToken fromMessage(SocketRxMessageData message) => RxLoginToken(message);
}


class TxVerifyToken extends SocketTxMessage {
  static const String type = 'verify-token';
  final VerifyToken proto;

  const TxVerifyToken([this.proto]) : super(type, authRequired: true, cache: Duration.zero);
  
  static VerifyToken get newProto => VerifyToken();
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


class TxDeleteFile extends SocketTxMessage {
  static const String type = 'delete-file';
  final DeleteFile proto;

  const TxDeleteFile([this.proto]) : super(type, authRequired: true, cache: Duration.zero);
  
  static DeleteFile get newProto => DeleteFile();
}


class TxUploadEnd extends SocketTxMessage {
  static const String type = 'upload-end';
  final UploadEnd proto;

  const TxUploadEnd([this.proto]) : super(type, authRequired: true, cache: Duration.zero);
  
  static UploadEnd get newProto => UploadEnd();
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

  const TxUploadStart([this.proto]) : super(type, authRequired: true, cache: Duration.zero);
  
  static UploadStart get newProto => UploadStart();
}


List<SocketRxMessage> rxMessages = [
  RxUploadProgress(),
  RxTokenInvalid(),
  RxLoginToken(),
  RxUploadStartSlot(),
  RxFormErrors(),
  RxLoginError(),
  RxUploadDone()
];
    
List<SingleChildWidget> getMessageProviders(SocketApi api) => [
      StreamProvider<RxUploadProgress>(
        create: (c) => _getMessageHandler(api, RxUploadProgress()),
        lazy: false,
      ),
      StreamProvider<RxTokenInvalid>(
        create: (c) => _getMessageHandler(api, RxTokenInvalid()),
        lazy: false,
      ),
      StreamProvider<RxLoginToken>(
        create: (c) => _getMessageHandler(api, RxLoginToken()),
        lazy: false,
      ),
      StreamProvider<RxUploadStartSlot>(
        create: (c) => _getMessageHandler(api, RxUploadStartSlot()),
        lazy: false,
      ),
      StreamProvider<RxFormErrors>(
        create: (c) => _getMessageHandler(api, RxFormErrors()),
        lazy: false,
      ),
      StreamProvider<RxLoginError>(
        create: (c) => _getMessageHandler(api, RxLoginError()),
        lazy: false,
      ),
      StreamProvider<RxUploadDone>(
        create: (c) => _getMessageHandler(api, RxUploadDone()),
        lazy: false,
      )
];

Stream<T> _getMessageHandler<T extends SocketRxMessage>(SocketApi api, T message) {
  Stream<T> s = api.getMessageHandler(message);
  api.fireFromCache(message);
  return s;
}