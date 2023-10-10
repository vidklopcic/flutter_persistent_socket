import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/messages.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/proto/sfiles.pb.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';

typedef StartPostUpload = Future<bool> Function(UploadStartSlot slot);

class PostFilesController with SubscriptionsMixin {
  final SocketApi socketApi;
  final StartPostUpload callback;

  PostFilesController(this.socketApi, this.callback) {
    listen(socketApi.getMessageHandler(RxUploadStartSlot()), _onUploadSlot);
  }

  Future startCached() async {
    socketApi.fireFromCache(await socketApi.getFromCache(RxUploadStartSlot()));
  }

  void dispose() {
    cancelSubscriptions();
  }

  void _onUploadSlot(RxUploadStartSlot message) async {
    final success = await callback(message.data);
    if (success) {
      database.socketRxEventDao.invalidateCacheForCacheUuid(message);
    }
  }
}
