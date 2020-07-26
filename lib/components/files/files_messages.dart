import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:flutter_persistent_socket/components/files/files_structures.dart';

class RxUploadStart extends SocketRxMessage {
  static const String type = 'upload-start';

  const RxUploadStart([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadStart fromMessage(SocketRxMessageData message) => RxUploadStart(message);

  String get key => message['key'];

  String get localKey => message['local-key'];
}

class RxUploadProgress extends SocketRxMessage {
  static const String type = 'upload-progress';

  const RxUploadProgress([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadProgress fromMessage(SocketRxMessageData message) => RxUploadProgress(message);

  int get nBytes => message['n-bytes'];

  String get key => message['key'];

  String get localKey => message['local-key'];
}

class RxUploadDone extends SocketRxMessage {
  static const String type = 'upload-done';

  const RxUploadDone([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadDone fromMessage(SocketRxMessageData message) => RxUploadDone(message);

  String get key => message['key'];

  SFile get file => SFile().fromObject(message['file']);
}

class TxUploadStart extends SocketTxMessage {
  static const String type = 'upload-start';
  final String localKey;
  final String extension;

  const TxUploadStart({this.localKey, this.extension}) : super(type);

  @override
  Map<String, dynamic> get data => {'local-key': localKey, 'extension': extension};
}

class TxUploadEnd extends SocketTxMessage {
  static const String type = 'upload-end';

  const TxUploadEnd() : super(type);

  @override
  Map<String, dynamic> get data => {};
}
