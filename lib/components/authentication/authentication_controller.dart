import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/components/authentication/authentication_messages.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';

abstract class AuthenticationController with SubscriptionsMixin {
  final SocketApi socketApi;

  AuthenticationController(this.socketApi) {
    listen(socketApi.getMessageHandler(RxLoginToken()), (message) => socketApi.setAuth(message.token));
    listen(socketApi.getMessageHandler(RxLoginError()), (_) => socketApi.setAuth(null));
    listen(socketApi.getMessageHandler(RxTokenInvalid()), (_) => socketApi.setAuth(null));
    socketApi.connection.whenConnected.then((value) => verifyToken());
  }

  void verifyToken() {
    if (!socketApi.authenticated.val) return;
    socketApi.sendMessage(TxVerifyToken(token: socketApi.token));
  }
}
