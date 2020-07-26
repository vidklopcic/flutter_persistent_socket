import 'dart:async';
import 'dart:io';

import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/components/files/files_messages.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';
import 'package:uuid/uuid.dart';

class FileUploadController with SubscriptionsMixin {
  bool debug = true;
  final SocketApi socketApi;
  final String localKey;
  final String Function(String) getUploadUrl;
  final String extension;

  Stream<List<int>> _data;
  String remoteKey;
  SocketApi uploadApi;
  Completer _uploadCompleter;
  Completer _targetSizeCompleter;
  int _targetSize = 0;
  bool _uploadInProgress = false;

  bool get uploadInProgress => _uploadInProgress;

  FileUploadController.fromFile(this.socketApi, File file, this.getUploadUrl, {this.extension = ''})
      : localKey = file.path {
    _data = file.openRead();
  }

  FileUploadController.fromPath(this.socketApi, String path, this.getUploadUrl, {this.extension = ''})
      : localKey = path {
    _data = File(path).openRead();
  }

  FileUploadController.fromStream(this.socketApi, this._data, this.getUploadUrl, {this.extension = ''})
      : localKey = Uuid().v4();

  Future startUpload() {
    _uploadCompleter = Completer();
    listen(socketApi.getMessageHandler(RxUploadStart()), _onUploadStart);
    socketApi.sendMessage(TxUploadStart(localKey: localKey, extension: extension));
    return _uploadCompleter.future;
  }

  void dispose() {
    if (uploadInProgress) throw Exception('upload must be complete');
    if (!(_targetSizeCompleter?.isCompleted ?? true)) {
      _targetSizeCompleter.completeError(Exception('disconencted'));
    }
    cancelSubscriptions();
    uploadApi?.close();
  }

  void _onUploadStart(RxUploadStart message) {
    if (message.localKey != localKey) return;
    remoteKey = message.key;
    _log('upload started (key: $remoteKey)');
    _uploadInProgress = true;
    uploadApi = SocketApi(getUploadUrl(remoteKey));
    uploadApi.setAuth(socketApi.token);
    listen(uploadApi.connection.connected.changes, (bool isConnected) {
      if (!isConnected) {
        _uploadInProgress = false;
        dispose();
      }
    });
    listen(uploadApi.getMessageHandler(RxUploadProgress()), _onProgressUpdate);

    // send the data when connected
    uploadApi.connection.whenConnected.then((_) async {
      _log('upload api connected');
      await for (List<int> chunk in _data) {
        _log('writing chunk (${chunk.length} bytes)');
        _targetSize += chunk.length;
        _targetSizeCompleter = Completer();
        try {
          uploadApi.connection.channel.sink.add(chunk);
          await _targetSizeCompleter.future;
        } catch (e) {
          _log('upload failed $e');
          break;
        }
      }
      uploadApi.sendMessage(TxUploadEnd());
      _uploadInProgress = false;
      _log('upload done');
      dispose();
    });
  }

  void _log(String message) {
    if (debug) print('FileUploadController[$localKey]: $message');
  }

  void _onProgressUpdate(RxUploadProgress message) {
    if (message.key != remoteKey) return;
    _log('uploaded ${message.nBytes} bytes');
    if (message.nBytes == _targetSize) {
      _targetSizeCompleter.complete();
    }
  }
}
