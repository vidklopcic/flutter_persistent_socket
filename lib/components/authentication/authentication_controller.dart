import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import '../../messages.dart';

abstract class AuthenticationController with SubscriptionsMixin {
  final SocketApi socketApi;

  AuthenticationController(this.socketApi) {
    listen(socketApi.getMessageHandler(RxLoginToken()),
        (RxLoginToken message) => socketApi.setAuth(message.data.token));
    listen(socketApi.getMessageHandler(RxLoginError()), (_) => logout());
    listen(socketApi.getMessageHandler(RxTokenInvalid()), (_) => logout());
  }

  Future init() async {
    await socketApi.fireFromCache(RxLoginToken());
  }

  void logout() {
    database.socketRxEventDao.invalidateCache();
    socketApi.setAuth(null);
  }

  void verifyToken() {
    if (!socketApi.authenticated.val) return;
    socketApi.sendMessage(TxVerifyToken.create());
  }
}
