import 'proto/sfiles.pb.dart';
import 'proto/authentication.pb.dart';
import 'proto/form_errors.pb.dart';
import 'package:provider/provider.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:provider/single_child_widget.dart';

class RxFormErrors extends SocketRxMessage {
  static const String type = 'form-errors';
  final FormErrors data = FormErrors();
  

  RxFormErrors([SocketRxMessageData message]) : super(type, message);

  @override
  RxFormErrors fromMessage(SocketRxMessageData message) => RxFormErrors(message);
}


class RxLoginToken extends SocketRxMessage {
  static const String type = 'login-token';
  final LoginToken data = LoginToken();
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);

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


class TxAppleLogin extends SocketTxMessage {
  static const String type = 'apple-login';
  final AppleLogin proto;
  
  
  const TxAppleLogin([this.proto]) : super(type, authRequired: false);
  
  static AppleLogin get newProto => AppleLogin();
  
  static TxAppleLogin create(AppleLogin Function(AppleLogin data) setData) => TxAppleLogin(setData(TxAppleLogin.newProto));
}


class TxLogin extends SocketTxMessage {
  static const String type = 'login';
  final Login proto;
  
  
  const TxLogin([this.proto]) : super(type, authRequired: false);
  
  static Login get newProto => Login();
  
  static TxLogin create(Login Function(Login data) setData) => TxLogin(setData(TxLogin.newProto));
}

class RxUploadStartSlotCacheKeys extends CacheKeys {
  final CacheKey localKey = const CacheKey(CacheKeyType.text, 0, 'localKey');

  const RxUploadStartSlotCacheKeys() : super(textKeys: const ['localKey'], realKeys: const [], dateKeys: const []);
}

class RxUploadStartSlot extends SocketRxMessage {
  static const String type = 'upload-start';
  final UploadStartSlot data = UploadStartSlot();
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);
  final RxUploadStartSlotCacheKeys cacheKeys = const RxUploadStartSlotCacheKeys();

  RxUploadStartSlot([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadStartSlot fromMessage(SocketRxMessageData message) => RxUploadStartSlot(message);
}


class RxUploadProgress extends SocketRxMessage {
  static const String type = 'upload-progress';
  final UploadProgress data = UploadProgress();
  

  RxUploadProgress([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadProgress fromMessage(SocketRxMessageData message) => RxUploadProgress(message);
}

class TxUploadStartCacheKeys extends CacheKeys {
  final CacheKey localKey = const CacheKey(CacheKeyType.text, 0, 'localKey');

  const TxUploadStartCacheKeys() : super(textKeys: const ['localKey'], realKeys: const [], dateKeys: const []);
}

class TxUploadStart extends SocketTxMessage {
  static const String type = 'upload-start';
  final UploadStart proto;
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);
  final TxUploadStartCacheKeys cacheKeys = const TxUploadStartCacheKeys();
  
  const TxUploadStart([this.proto]) : super(type, authRequired: true);
  
  static UploadStart get newProto => UploadStart();
  
  static TxUploadStart create(UploadStart Function(UploadStart data) setData) => TxUploadStart(setData(TxUploadStart.newProto));
}


class RxTokenInvalid extends SocketRxMessage {
  static const String type = 'token-invalid';
  final TokenInvalid data = TokenInvalid();
  

  RxTokenInvalid([SocketRxMessageData message]) : super(type, message);

  @override
  RxTokenInvalid fromMessage(SocketRxMessageData message) => RxTokenInvalid(message);
}


class TxUploadEnd extends SocketTxMessage {
  static const String type = 'upload-end';
  final UploadEnd proto;
  
  
  const TxUploadEnd([this.proto]) : super(type, authRequired: true);
  
  static UploadEnd get newProto => UploadEnd();
  
  static TxUploadEnd create(UploadEnd Function(UploadEnd data) setData) => TxUploadEnd(setData(TxUploadEnd.newProto));
}


class TxVerifyToken extends SocketTxMessage {
  static const String type = 'verify-token';
  final VerifyToken proto;
  
  
  const TxVerifyToken([this.proto]) : super(type, authRequired: true);
  
  static VerifyToken get newProto => VerifyToken();
  
  static TxVerifyToken create(VerifyToken Function(VerifyToken data) setData) => TxVerifyToken(setData(TxVerifyToken.newProto));
}


class TxDeleteFile extends SocketTxMessage {
  static const String type = 'delete-file';
  final DeleteFile proto;
  
  
  const TxDeleteFile([this.proto]) : super(type, authRequired: true);
  
  static DeleteFile get newProto => DeleteFile();
  
  static TxDeleteFile create(DeleteFile Function(DeleteFile data) setData) => TxDeleteFile(setData(TxDeleteFile.newProto));
}


class RxLoginError extends SocketRxMessage {
  static const String type = 'login-error';
  final LoginError data = LoginError();
  

  RxLoginError([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginError fromMessage(SocketRxMessageData message) => RxLoginError(message);
}


List<SocketRxMessage> rxMessages = [
  RxFormErrors(),
  RxLoginToken(),
  RxUploadDone(),
  RxUploadStartSlot(),
  RxUploadProgress(),
  RxTokenInvalid(),
  RxLoginError()
];
    
List<SingleChildWidget> getMessageProviders(SocketApi api) => [
      StreamProvider<RxFormErrors>(
        create: (c) => _getMessageHandler(api, RxFormErrors()),
        lazy: false,
      ),
      StreamProvider<RxLoginToken>(
        create: (c) => _getMessageHandler(api, RxLoginToken()),
        lazy: false,
      ),
      StreamProvider<RxUploadDone>(
        create: (c) => _getMessageHandler(api, RxUploadDone()),
        lazy: false,
      ),
      StreamProvider<RxUploadStartSlot>(
        create: (c) => _getMessageHandler(api, RxUploadStartSlot()),
        lazy: false,
      ),
      StreamProvider<RxUploadProgress>(
        create: (c) => _getMessageHandler(api, RxUploadProgress()),
        lazy: false,
      ),
      StreamProvider<RxTokenInvalid>(
        create: (c) => _getMessageHandler(api, RxTokenInvalid()),
        lazy: false,
      ),
      StreamProvider<RxLoginError>(
        create: (c) => _getMessageHandler(api, RxLoginError()),
        lazy: false,
      )
];

Stream<T> _getMessageHandler<T extends SocketRxMessage>(SocketApi api, T message) {
  Stream<T> s = api.getMessageHandler(message);
  api.fireFromCache(message);
  return s;
}