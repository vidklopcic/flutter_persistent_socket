import 'package:flutter_persistent_socket/communication/socket_messages.dart';

class RxFormErrors extends SocketRxMessage {
  static const String type = 'form-errors';

  RxFormErrors([SocketRxMessageData message]) : super(type, message);

  @override
  SocketRxMessage fromMessage(SocketRxMessageData message) => RxFormErrors(message);

  String get relatedMessageType => message['related-message-type'];

  Map<String, List> get errors => message['errors'].cast<String, List>();

  bool isRelated(List<String> types) => types.contains(relatedMessageType);
}