import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/messages.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/proto/sfiles.pb.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';

typedef StartPostUpload = Future<bool> Function(String key, UploadedFile file);

class PostFilesController with SubscriptionsMixin {
  final SocketApi socketApi;
  final StartPostUpload callback;

  PostFilesController(this.socketApi, this.callback) {
    listen(socketApi.getMessageHandler(RxPostUploadSlot()), _onUploadSlot);
  }

  void startCached() {
    socketApi.fireFromCache(RxPostUploadSlot());
  }

  void dispose() {
    cancelSubscriptions();
  }

  void _onUploadSlot(RxPostUploadSlot message) async {
    final success = await callback(message.data.file);
    if (success) {
      database.socketRxEventDao.invalidateCacheForCacheUuid(message);
    }
  }
}
