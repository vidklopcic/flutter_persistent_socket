import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/components/authentication/authentication_messages.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/proto/authentication.pb.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';

abstract class AuthenticationController with SubscriptionsMixin {
  final SocketApi socketApi;

  AuthenticationController(this.socketApi) {
    listen(socketApi.getMessageHandler(RxLoginToken()), (message) => socketApi.setAuth(message.token));
    listen(socketApi.getMessageHandler(RxLoginError()), (_) => _logout());
    listen(socketApi.getMessageHandler(RxTokenInvalid()), (_) => _logout());
    socketApi.connection.whenConnected.then((value) => verifyToken());
  }

  void _logout() {
    database.socketRxEventDao.invalidateCacheForMessageType(RxLoginToken());
    socketApi.setAuth(null);
  }

  void verifyToken() {
    if (!socketApi.authenticated.val) return;
    socketApi.sendMessage(TxVerifyToken(TxVerifyTokenData()..token = socketApi.token));
  }
}
