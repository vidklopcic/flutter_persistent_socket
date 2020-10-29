import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/proto/sfiles.pb.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';

import '../../messages.dart';

class FilesController with SubscriptionsMixin {
  final SocketApi socketApi;
  final FileUploadController Function(RxUploadStartSlot) createUploadController;
  final StreamController<RxUploadProgress> _progressEvents = StreamController.broadcast();

  Stream<RxUploadProgress> get progressEvents => _progressEvents.stream;
  Map<String, FileUploadController> _uploadControllers = {};

  FilesController(this.socketApi, this.createUploadController) {
    listen(socketApi.getMessageHandler(RxUploadStartSlot()), _onUploadStart);
  }

  void dispose() {
    cancelSubscriptions();
  }

  void _onUploadStart(RxUploadStartSlot message) async {
    FileUploadController controller = createUploadController(message);
    _uploadControllers[message.data.localKey] = controller;
    controller.filesController = this;
    controller.startUpload(message.data.key);
    await socketApi.getMessageHandler(RxUploadDone()).firstWhere((msg) => msg.data.file.localKey == message.data.localKey);
    database.socketRxEventDao.invalidateCacheForCacheUuid(message);
    print('uploaded ${message.data.localKey}');
  }

  static void delete(SocketApi api, UploadedFile file) {
    if (file.url != null && file.id != null) api.sendMessage(TxDeleteFile(DeleteFile()..file = file));
    file.clearLocalKey();
    file.clearUrl();
  }

  void cancelUpload(String localKey) {
    _uploadControllers[localKey]?.cancel();
  }
}

class FileUploadController with SubscriptionsMixin {
  bool debug = false;
  final SocketApi socketApi;
  final String localKey;
  final String Function(String) getUploadUrl;
  final String extension;

  FilesController filesController;
  Stream<List<int>> _data;
  String remoteKey;
  SocketApi uploadApi;
  Completer _uploadCompleter;
  Completer _targetSizeCompleter;
  int _targetSize = 0;
  bool _uploadInProgress = false;

  bool get uploadInProgress => _uploadInProgress;

  FileUploadController.fromFile(this.socketApi, File file, this.getUploadUrl,
      {@required this.localKey, this.extension = ''}) {
    _data = file.openRead();
  }

  FileUploadController.fromPath(this.socketApi, String path, this.getUploadUrl,
      {@required this.localKey, this.extension = ''}) {
    _data = File(path).openRead();
  }

  FileUploadController.fromStream(this.socketApi, this._data, this.getUploadUrl,
      {@required this.localKey, this.extension = ''});

  Future startUpload(String key) {
    remoteKey = key;
    _uploadCompleter = Completer();
    _onUploadStart();
    return _uploadCompleter.future;
  }

  void dispose() {
    if (uploadInProgress) throw Exception('upload must be completed');
    if (!(_targetSizeCompleter?.isCompleted ?? true)) {
      _targetSizeCompleter.completeError(Exception('disconencted'));
    }
    cancelSubscriptions();
    uploadApi?.close();
    _uploadCompleter.complete();
  }

  void _onUploadStart() {
    _log('upload started (key: $remoteKey)');
    _uploadInProgress = true;
    uploadApi = SocketApi(getUploadUrl(remoteKey));
    uploadApi.connection.autoReconnect = false;
    uploadApi.setAuth(socketApi.token);
    listen(uploadApi.connection.connected.changes, (bool isConnected) {
      if (!isConnected) {
        _uploadInProgress = false;
        dispose();
      }
    });
    listen(uploadApi.getMessageHandler(RxUploadProgress()), _onProgressUpdate);

    // send the data when connected
    uploadApi.connection.whenConnected.then(
      (_) async {
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
        uploadApi.sendMessage(TxUploadEnd(UploadEnd()));
        await Future.delayed(Duration(seconds: 5));
        _uploadInProgress = false;
        _log('upload done');
        dispose();
      },
    );
  }

  void _log(String message) {
    if (debug) print('FileUploadController[$localKey]: $message');
  }

  void _onProgressUpdate(RxUploadProgress message) {
    filesController._progressEvents.add(message);
    if (message.data.key != remoteKey) return;
    _log('uploaded ${message.data.nBytes} bytes');
    if (message.data.nBytes == _targetSize) {
      _targetSizeCompleter.complete();
    }
  }

  void cancel() {
    _uploadInProgress = false;
    dispose();
  }
}
