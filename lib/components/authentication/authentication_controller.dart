import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import '../../messages.dart';

abstract class AuthenticationController with SubscriptionsMixin {
  final SocketApi socketApi;
  RxLoginToken? token;

  AuthenticationController(this.socketApi) {
    listen(socketApi.getMessageHandler(RxLoginToken()), (RxLoginToken message) {
      socketApi.setAuth(message.data.token, message.data.refresh);
      onTokenChanged(message.data.token);
    });
    listen(socketApi.getMessageHandler(RxLoginError()), (_) => logout());
    listen(socketApi.getMessageHandler(RxTokenInvalid()), (_) => onTokenInvalid());
  }

  Future init([String? token]) async {
    if (!socketApi.noCache) {
      socketApi.fireFromCache(await socketApi.getFromCache(RxLoginToken()));
    }

    if (token != null) {
      socketApi.setAuth(token);
    }
  }

  void logout() {
    if (!socketApi.noCache) {
      database.socketRxEventDao.invalidateCache();
    }
    socketApi.setAuth(null);
    onTokenChanged(null);
  }

  void verifyToken() {
    if (!socketApi.authenticated.val!) return;
    socketApi.sendMessage(TxVerifyToken.create());
  }

  void onTokenChanged(String? token) {}

  void onTokenInvalid() {
    logout();
    socketApi.refreshToken();
  }
}
