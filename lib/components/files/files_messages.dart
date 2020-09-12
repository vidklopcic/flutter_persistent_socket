import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:flutter_persistent_socket/proto/files.pb.dart';

class RxUploadStart extends SocketRxMessage {
  static const String type = 'upload-start';
  final RxUploadStartData data = RxUploadStartData();

  RxUploadStart([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadStart fromMessage(SocketRxMessageData message) => RxUploadStart(message);
}

class RxUploadProgress extends SocketRxMessage {
  static const String type = 'upload-progress';
  RxUploadProgressData data = RxUploadProgressData();

  RxUploadProgress([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadProgress fromMessage(SocketRxMessageData message) => RxUploadProgress(message);
}

class RxUploadDone extends SocketRxMessage {
  static const String type = 'upload-done';
  RxUploadDoneData data = RxUploadDoneData();

  RxUploadDone([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadDone fromMessage(SocketRxMessageData message) => RxUploadDone(message);
}

class TxUploadStart extends SocketTxMessage {
  static const String type = 'upload-start';
  final TxUploadStartData proto;

  const TxUploadStart(this.proto) : super(type);
}

class TxUploadEnd extends SocketTxMessage {
  static const String type = 'upload-end';

  const TxUploadEnd() : super(type);
}

class TxDeleteFile extends SocketTxMessage {
  static const String type = 'delete-file';
  final TxDeleteFileData proto;

  const TxDeleteFile(this.proto) : super(type);
}
