import 'package:flutter_persistent_socket/communication/socket_messages.dart';

class RxUploadStart extends SocketRxMessage {
  static const String type = 'upload-start';

  const RxUploadStart([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadStart fromMessage(SocketRxMessageData message) => RxUploadStart(message);

  String get key => message['key'];
}

class RxUploadProgress extends SocketRxMessage {
  static const String type = 'upload-progress';

  const RxUploadProgress([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadProgress fromMessage(SocketRxMessageData message) => RxUploadProgress(message);

  double get progress => message['progress'];

  String get key => message['key'];
}

class RxUploadDone extends SocketRxMessage {
  static const String type = 'upload-done';

  const RxUploadDone([SocketRxMessageData message]) : super(type, message);

  @override
  RxUploadDone fromMessage(SocketRxMessageData message) => RxUploadDone(message);

  String get key => message['key'];
}

class TxUploadStart extends SocketTxMessage {
  static const String type = 'upload-start';
  final String filename;
  final int size;

  const TxUploadStart({this.filename, this.size}) : super(type);

  @override
  Map<String, dynamic> get data => {'filename': filename, 'size': size};
}
