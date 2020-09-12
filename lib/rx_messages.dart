import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'components/files/files_messages.dart';
import 'communication/socket_messages.dart';
import 'components/authentication/authentication_messages.dart';
import 'components/error_handling/error_handling_messages.dart';
    
List<SocketRxMessage> rxMessages = [
    RxFormErrors(),
    RxUploadStart(),
    RxUploadProgress(),
    RxUploadDone(),
    RxLoginToken(),
    RxLoginError(),
    RxTokenInvalid(),
    RxLoginToken()
];