import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:flutter_persistent_socket/proto/files.pb.dart';

class RxUploadStartSlot extends SocketRxMessage {
  static const String type = 'upload-start';
  final UploadStartSlot data = UploadStartSlot();

  RxUploadStartSlot([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadStartSlot fromMessage(SocketRxMessageData message) => RxUploadStartSlot(message);
}

class RxUploadProgress extends SocketRxMessage {
  static const String type = 'upload-progress';
  UploadProgress data = UploadProgress();

  RxUploadProgress([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadProgress fromMessage(SocketRxMessageData message) => RxUploadProgress(message);
}

class RxUploadDone extends SocketRxMessage {
  static const String type = 'upload-done';
  UploadDone data = UploadDone();

  RxUploadDone([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadDone fromMessage(SocketRxMessageData message) => RxUploadDone(message);
}

class TxUploadStart extends SocketTxMessage {
  static const String type = 'upload-start';
  final UploadStart proto;

  const TxUploadStart(this.proto) : super(type);
}

class TxUploadEnd extends SocketTxMessage {
  static const String type = 'upload-end';

  const TxUploadEnd() : super(type);
}

class TxDeleteFile extends SocketTxMessage {
  static const String type = 'delete-file';
  final DeleteFile proto;

  const TxDeleteFile(this.proto) : super(type);
}
