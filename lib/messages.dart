import 'package:provider/provider.dart';
import 'package:moor/moor.dart';
import 'proto/uploader.pb.dart';
import 'proto/sfiles.pb.dart';
import 'proto/form_errors.pb.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'proto/socket_api.pb.dart';
import 'proto/authentication.pb.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:provider/single_child_widget.dart';

class TxUploadEnd extends SocketTxMessage {
  static const String type = 'upload-end';
  final UploadEnd proto;
  
  
  const TxUploadEnd([this.proto]) : super(type, authRequired: true);
  
  static UploadEnd get newProto => UploadEnd();
  
  static TxUploadEnd create([UploadEnd Function(UploadEnd data) setData]) => TxUploadEnd((setData ?? (p) => p)(TxUploadEnd.newProto));
}

class RxUploadTaskCacheKeys extends CacheKeys {
  final CacheKey fingerprintKey = const CacheKey(CacheKeyType.text, 0, 'fingerprint');
  GeneratedTextColumn fingerprint(table) => fingerprintKey.textField(table);

  const RxUploadTaskCacheKeys() : super(textKeys: const ['fingerprint'], realKeys: const [], dateKeys: const []);
}

class RxUploadTask extends SocketRxMessage {
  static const String type = 'upload-task';
  final UploadTask data = UploadTask();
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);
  final RxUploadTaskCacheKeys cacheKeys = const RxUploadTaskCacheKeys();

  RxUploadTask([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadTask fromMessage(SocketRxMessageData message) => RxUploadTask(message);
}


class TxVerifyToken extends SocketTxMessage {
  static const String type = 'verify-token';
  final VerifyToken proto;
  
  
  const TxVerifyToken([this.proto]) : super(type, authRequired: true);
  
  static VerifyToken get newProto => VerifyToken();
  
  static TxVerifyToken create([VerifyToken Function(VerifyToken data) setData]) => TxVerifyToken((setData ?? (p) => p)(TxVerifyToken.newProto));
}


class RxUploadProgress extends SocketRxMessage {
  static const String type = 'upload-progress';
  final UploadProgress data = UploadProgress();
  

  RxUploadProgress([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadProgress fromMessage(SocketRxMessageData message) => RxUploadProgress(message);
}


class RxFormErrors extends SocketRxMessage {
  static const String type = 'form-errors';
  final FormErrors data = FormErrors();
  

  RxFormErrors([SocketRxMessageData message]) : super(type, message);

  @override
  RxFormErrors fromMessage(SocketRxMessageData message) => RxFormErrors(message);
}


class TxLogin extends SocketTxMessage {
  static const String type = 'login';
  final Login proto;
  
  
  const TxLogin([this.proto]) : super(type, authRequired: false);
  
  static Login get newProto => Login();
  
  static TxLogin create([Login Function(Login data) setData]) => TxLogin((setData ?? (p) => p)(TxLogin.newProto));
}


class RxUpgradeApiVersion extends SocketRxMessage {
  static const String type = 'upgrade-api-version';
  final UpgradeApiVersion data = UpgradeApiVersion();
  

  RxUpgradeApiVersion([SocketRxMessageData message]) : super(type, message);

  @override
  RxUpgradeApiVersion fromMessage(SocketRxMessageData message) => RxUpgradeApiVersion(message);
}


class RxUploadDone extends SocketRxMessage {
  static const String type = 'upload-done';
  final UploadDone data = UploadDone();
  

  RxUploadDone([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadDone fromMessage(SocketRxMessageData message) => RxUploadDone(message);
}

class TxUploadStartCacheKeys extends CacheKeys {
  final CacheKey localKeyKey = const CacheKey(CacheKeyType.text, 0, 'localKey');
  GeneratedTextColumn localKey(table) => localKeyKey.textField(table);

  const TxUploadStartCacheKeys() : super(textKeys: const ['localKey'], realKeys: const [], dateKeys: const []);
}

class TxUploadStart extends SocketTxMessage {
  static const String type = 'upload-start';
  final UploadStart proto;
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);
  final TxUploadStartCacheKeys cacheKeys = const TxUploadStartCacheKeys();
  
  const TxUploadStart([this.proto]) : super(type, authRequired: true);
  
  static UploadStart get newProto => UploadStart();
  
  static TxUploadStart create([UploadStart Function(UploadStart data) setData]) => TxUploadStart((setData ?? (p) => p)(TxUploadStart.newProto));
}


class TxDeleteFile extends SocketTxMessage {
  static const String type = 'delete-file';
  final DeleteFile proto;
  
  
  const TxDeleteFile([this.proto]) : super(type, authRequired: true);
  
  static DeleteFile get newProto => DeleteFile();
  
  static TxDeleteFile create([DeleteFile Function(DeleteFile data) setData]) => TxDeleteFile((setData ?? (p) => p)(TxDeleteFile.newProto));
}

class RxUploadStartSlotCacheKeys extends CacheKeys {
  final CacheKey localKeyKey = const CacheKey(CacheKeyType.text, 0, 'localKey');
  GeneratedTextColumn localKey(table) => localKeyKey.textField(table);

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


class TxAppleLogin extends SocketTxMessage {
  static const String type = 'apple-login';
  final AppleLogin proto;
  
  
  const TxAppleLogin([this.proto]) : super(type, authRequired: false);
  
  static AppleLogin get newProto => AppleLogin();
  
  static TxAppleLogin create([AppleLogin Function(AppleLogin data) setData]) => TxAppleLogin((setData ?? (p) => p)(TxAppleLogin.newProto));
}


class RxLoginToken extends SocketRxMessage {
  static const String type = 'login-token';
  final LoginToken data = LoginToken();
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);

  RxLoginToken([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginToken fromMessage(SocketRxMessageData message) => RxLoginToken(message);
}


class RxTokenInvalid extends SocketRxMessage {
  static const String type = 'token-invalid';
  final TokenInvalid data = TokenInvalid();
  

  RxTokenInvalid([SocketRxMessageData message]) : super(type, message);

  @override
  RxTokenInvalid fromMessage(SocketRxMessageData message) => RxTokenInvalid(message);
}


class RxLoginError extends SocketRxMessage {
  static const String type = 'login-error';
  final LoginError data = LoginError();
  

  RxLoginError([SocketRxMessageData message]) : super(type, message);

  @override
  RxLoginError fromMessage(SocketRxMessageData message) => RxLoginError(message);
}


class RxAck extends SocketRxMessage {
  static const String type = 'ack';
  final Ack data = Ack();
  

  RxAck([SocketRxMessageData message]) : super(type, message);

  @override
  RxAck fromMessage(SocketRxMessageData message) => RxAck(message);
}


List<SocketRxMessage> rxMessages = [
  RxUploadTask(),
  RxUploadProgress(),
  RxFormErrors(),
  RxUpgradeApiVersion(),
  RxUploadDone(),
  RxUploadStartSlot(),
  RxLoginToken(),
  RxTokenInvalid(),
  RxLoginError(),
  RxAck()
];
    
List<SingleChildWidget> getMessageProviders(SocketApi api) => [
      StreamProvider<RxUploadTask>(
        create: (c) => _getMessageHandler(api, RxUploadTask()),
        lazy: false,
      ),
      StreamProvider<RxUploadProgress>(
        create: (c) => _getMessageHandler(api, RxUploadProgress()),
        lazy: false,
      ),
      StreamProvider<RxFormErrors>(
        create: (c) => _getMessageHandler(api, RxFormErrors()),
        lazy: false,
      ),
      StreamProvider<RxUpgradeApiVersion>(
        create: (c) => _getMessageHandler(api, RxUpgradeApiVersion()),
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
      StreamProvider<RxLoginToken>(
        create: (c) => _getMessageHandler(api, RxLoginToken()),
        lazy: false,
      ),
      StreamProvider<RxTokenInvalid>(
        create: (c) => _getMessageHandler(api, RxTokenInvalid()),
        lazy: false,
      ),
      StreamProvider<RxLoginError>(
        create: (c) => _getMessageHandler(api, RxLoginError()),
        lazy: false,
      ),
      StreamProvider<RxAck>(
        create: (c) => _getMessageHandler(api, RxAck()),
        lazy: false,
      )
];

Stream<T> _getMessageHandler<T extends SocketRxMessage>(SocketApi api, T message) {
  Stream<T> s = api.getMessageHandler(message);
  api.fireFromCache(message);
  return s;
}