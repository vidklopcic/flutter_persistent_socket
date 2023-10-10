import 'package:provider/single_child_widget.dart';
import 'proto/sfiles.pb.dart';
import 'package:drift/drift.dart';
import 'proto/uploader.pb.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'proto/authentication.pb.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:provider/provider.dart';
import 'proto/socket_api.pb.dart';

class TxLogin extends SocketTxMessage {
  static const String type = 'login';
  final Login proto;
  

  const TxLogin(this.proto) : super(type, authRequired: false);

  static Login get newProto => Login();

  static TxLogin create([Login Function(Login data)? setData]) => TxLogin((setData ?? (p) => p)(TxLogin.newProto));
}


class RxLoginError extends SocketRxMessage {
  static const String type = 'login-error';
  final LoginError data = LoginError();
  

  RxLoginError([SocketRxMessageData? message]) : super(type, message);

  @override
  RxLoginError fromMessage(SocketRxMessageData message) => RxLoginError(message);
}


class RxLoginToken extends SocketRxMessage {
  static const String type = 'login-token';
  final LoginToken data = LoginToken();
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);

  RxLoginToken([SocketRxMessageData? message]) : super(type, message);

  @override
  RxLoginToken fromMessage(SocketRxMessageData message) => RxLoginToken(message);
}


class TxRefreshToken extends SocketTxMessage {
  static const String type = 'refresh-token';
  final RefreshToken proto;
  

  const TxRefreshToken(this.proto) : super(type, authRequired: true);

  static RefreshToken get newProto => RefreshToken();

  static TxRefreshToken create([RefreshToken Function(RefreshToken data)? setData]) => TxRefreshToken((setData ?? (p) => p)(TxRefreshToken.newProto));
}


class RxRefreshTokenInvalid extends SocketRxMessage {
  static const String type = 'refresh-token-invalid';
  final RefreshTokenInvalid data = RefreshTokenInvalid();
  

  RxRefreshTokenInvalid([SocketRxMessageData? message]) : super(type, message);

  @override
  RxRefreshTokenInvalid fromMessage(SocketRxMessageData message) => RxRefreshTokenInvalid(message);
}


class RxTokenInvalid extends SocketRxMessage {
  static const String type = 'token-invalid';
  final TokenInvalid data = TokenInvalid();
  

  RxTokenInvalid([SocketRxMessageData? message]) : super(type, message);

  @override
  RxTokenInvalid fromMessage(SocketRxMessageData message) => RxTokenInvalid(message);
}


class TxVerifyToken extends SocketTxMessage {
  static const String type = 'verify-token';
  final VerifyToken proto;
  

  const TxVerifyToken(this.proto) : super(type, authRequired: true);

  static VerifyToken get newProto => VerifyToken();

  static TxVerifyToken create([VerifyToken Function(VerifyToken data)? setData]) => TxVerifyToken((setData ?? (p) => p)(TxVerifyToken.newProto));
}


class TxDeleteFile extends SocketTxMessage {
  static const String type = 'delete-file';
  final DeleteFile proto;
  

  const TxDeleteFile(this.proto) : super(type, authRequired: true);

  static DeleteFile get newProto => DeleteFile();

  static TxDeleteFile create([DeleteFile Function(DeleteFile data)? setData]) => TxDeleteFile((setData ?? (p) => p)(TxDeleteFile.newProto));
}


class RxUploadDone extends SocketRxMessage {
  static const String type = 'upload-done';
  final UploadDone data = UploadDone();
  

  RxUploadDone([SocketRxMessageData? message]) : super(type, message);

  @override
  RxUploadDone fromMessage(SocketRxMessageData message) => RxUploadDone(message);
}


class TxUploadEnd extends SocketTxMessage {
  static const String type = 'upload-end';
  final UploadEnd proto;
  

  const TxUploadEnd(this.proto) : super(type, authRequired: true);

  static UploadEnd get newProto => UploadEnd();

  static TxUploadEnd create([UploadEnd Function(UploadEnd data)? setData]) => TxUploadEnd((setData ?? (p) => p)(TxUploadEnd.newProto));
}


class RxUploadProgress extends SocketRxMessage {
  static const String type = 'upload-progress';
  final UploadProgress data = UploadProgress();
  

  RxUploadProgress([SocketRxMessageData? message]) : super(type, message);

  @override
  RxUploadProgress fromMessage(SocketRxMessageData message) => RxUploadProgress(message);
}

class TxUploadStartCacheKeys extends CacheKeys {
  final CacheKey localKeyKey = const CacheKey(CacheKeyType.text, 0, 'localKey');
  TextColumn localKey(table) => localKeyKey.textField(table);

  const TxUploadStartCacheKeys() : super(textKeys: const ['localKey'], realKeys: const [], dateKeys: const []);
}


class TxUploadStartTable {
  final TxUploadStart message;
  final TextColumn localKey;

  TxUploadStartTable(this.message, table) : localKey = message.cacheKeys.localKeyKey.textField(table);
}


class TxUploadStart extends SocketTxMessage {
  static const String type = 'upload-start';
  final UploadStart proto;
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);
  final TxUploadStartCacheKeys cacheKeys = const TxUploadStartCacheKeys();

  const TxUploadStart(this.proto) : super(type, authRequired: true);

  static UploadStart get newProto => UploadStart();

  static TxUploadStart create([UploadStart Function(UploadStart data)? setData]) => TxUploadStart((setData ?? (p) => p)(TxUploadStart.newProto));
}

class RxUploadStartSlotCacheKeys extends CacheKeys {
  final CacheKey localKeyKey = const CacheKey(CacheKeyType.text, 0, 'localKey');
  TextColumn localKey(table) => localKeyKey.textField(table);

  const RxUploadStartSlotCacheKeys() : super(textKeys: const ['localKey'], realKeys: const [], dateKeys: const []);
}


class RxUploadStartSlotTable {
  final RxUploadStartSlot message;
  final TextColumn localKey;

  RxUploadStartSlotTable(this.message, table) : localKey = message.cacheKeys.localKeyKey.textField(table);
}


class RxUploadStartSlot extends SocketRxMessage<RxUploadStartSlotTable> {
  static const String type = 'upload-start';
  final UploadStartSlot data = UploadStartSlot();
  final Duration cache = const Duration(days: 7, hours: 0, minutes: 0, seconds: 0);
  final RxUploadStartSlotCacheKeys cacheKeys = const RxUploadStartSlotCacheKeys();
  late RxUploadStartSlotTable table;

  RxUploadStartSlot([SocketRxMessageData? message]) : super(type, message);

  @override
  RxUploadStartSlot fromMessage(SocketRxMessageData message) => RxUploadStartSlot(message);

  void setTable(tbl) => table = RxUploadStartSlotTable(this, tbl);
}


class RxAck extends SocketRxMessage {
  static const String type = 'ack';
  final Ack data = Ack();
  

  RxAck([SocketRxMessageData? message]) : super(type, message);

  @override
  RxAck fromMessage(SocketRxMessageData message) => RxAck(message);
}


class RxAsyncProgress extends SocketRxMessage {
  static const String type = 'async-progress';
  final AsyncProgress data = AsyncProgress();
  

  RxAsyncProgress([SocketRxMessageData? message]) : super(type, message);

  @override
  RxAsyncProgress fromMessage(SocketRxMessageData message) => RxAsyncProgress(message);
}


class RxUpgradeApiVersion extends SocketRxMessage {
  static const String type = 'upgrade-api-version';
  final UpgradeApiVersion data = UpgradeApiVersion();
  

  RxUpgradeApiVersion([SocketRxMessageData? message]) : super(type, message);

  @override
  RxUpgradeApiVersion fromMessage(SocketRxMessageData message) => RxUpgradeApiVersion(message);
}


class TxDeleteUFile extends SocketTxMessage {
  static const String type = 'delete-ufile';
  final DeleteUFile proto;
  

  const TxDeleteUFile(this.proto) : super(type, authRequired: true);

  static DeleteUFile get newProto => DeleteUFile();

  static TxDeleteUFile create([DeleteUFile Function(DeleteUFile data)? setData]) => TxDeleteUFile((setData ?? (p) => p)(TxDeleteUFile.newProto));
}


class RxUploadSlot extends SocketRxMessage {
  static const String type = 'upload-slot';
  final UploadSlot data = UploadSlot();
  

  RxUploadSlot([SocketRxMessageData? message]) : super(type, message);

  @override
  RxUploadSlot fromMessage(SocketRxMessageData message) => RxUploadSlot(message);
}

class RxUploadTaskCacheKeys extends CacheKeys {
  final CacheKey fingerprintKey = const CacheKey(CacheKeyType.text, 0, 'fingerprint');
  TextColumn fingerprint(table) => fingerprintKey.textField(table);

  const RxUploadTaskCacheKeys() : super(textKeys: const ['fingerprint'], realKeys: const [], dateKeys: const []);
}


class RxUploadTaskTable {
  final RxUploadTask message;
  final TextColumn fingerprint;

  RxUploadTaskTable(this.message, table) : fingerprint = message.cacheKeys.fingerprintKey.textField(table);
}


class RxUploadTask extends SocketRxMessage<RxUploadTaskTable> {
  static const String type = 'upload-task';
  final UploadTask data = UploadTask();
  final Duration cache = const Duration(days: 365, hours: 0, minutes: 0, seconds: 0);
  final RxUploadTaskCacheKeys cacheKeys = const RxUploadTaskCacheKeys();
  late RxUploadTaskTable table;

  RxUploadTask([SocketRxMessageData? message]) : super(type, message);

  @override
  RxUploadTask fromMessage(SocketRxMessageData message) => RxUploadTask(message);

  void setTable(tbl) => table = RxUploadTaskTable(this, tbl);
}


class TxUploadUFile extends SocketTxMessage {
  static const String type = 'upload-ufile';
  final UploadUFile proto;
  

  const TxUploadUFile(this.proto) : super(type, authRequired: true);

  static UploadUFile get newProto => UploadUFile();

  static TxUploadUFile create([UploadUFile Function(UploadUFile data)? setData]) => TxUploadUFile((setData ?? (p) => p)(TxUploadUFile.newProto));
}


        List<SocketRxMessage> rxMessages = [
          RxLoginError(),
  RxLoginToken(),
  RxRefreshTokenInvalid(),
  RxTokenInvalid(),
  RxUploadDone(),
  RxUploadProgress(),
  RxUploadStartSlot(),
  RxAck(),
  RxAsyncProgress(),
  RxUpgradeApiVersion(),
  RxUploadSlot(),
  RxUploadTask()
        ];