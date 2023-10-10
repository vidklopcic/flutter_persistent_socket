import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/proto/sfiles.pb.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';

import '../../messages.dart';

class FilesController with SubscriptionsMixin {
  final SocketApi socketApi;
  final FileUploadController Function(RxUploadStartSlot) createUploadController;
  final StreamController<RxUploadProgress> _progressEvents = StreamController.broadcast();
  int nConcurrent;
  List<String> _uploadingLocalKeys = [];
  Set<String> _pendingAndUploadingLocalKeys = {};
  List<RxUploadStartSlot> _pendingUploads = [];

  Stream<RxUploadProgress> get progressEvents => _progressEvents.stream;
  Map<String, FileUploadController> _uploadControllers = {};

  FilesController(this.socketApi, this.createUploadController, {this.nConcurrent = 3}) {
    listen(socketApi.getMessageHandler(RxUploadStartSlot()), (RxUploadStartSlot m) {
      if (_pendingAndUploadingLocalKeys.contains(m.data.localKey)) return;
      _onUploadStart(m);
    });
  }

  void dispose() {
    cancelSubscriptions();
  }

  void _onUploadStart(RxUploadStartSlot message) async {
    _pendingAndUploadingLocalKeys.add(message.data.localKey);
    if (_uploadingLocalKeys.contains(message.data.localKey)) return;
    if (_uploadingLocalKeys.length >= nConcurrent) {
      _pendingUploads.add(message);
      return;
    }
    print('uploading ${message.data.localKey}');
    _uploadingLocalKeys.add(message.data.localKey);

    try {
      await __onUploadStart(message);
    } catch (e) {
      // should not happen
      print('Unhandled upload exception! $e');
    }

    _uploadingLocalKeys.remove(message.data.localKey);
    _pendingAndUploadingLocalKeys.remove(message.data.localKey);

    if (_pendingUploads.length > 0) {
      _onUploadStart(_pendingUploads.removeAt(0));
    }
  }

  Future __onUploadStart(RxUploadStartSlot message, [int tryN = 0]) async {
    _uploadControllers[message.data.localKey]?.cancel();
    FileUploadController controller = createUploadController(message);
    _uploadControllers[message.data.localKey] = controller;
    controller.filesController = this;

    Completer _doneCompleter = Completer();
    final _doneSub = socketApi.getMessageHandler(RxUploadDone()).listen((devent) {
      database.socketRxEventDao.invalidateCacheForCacheUuid(message);
      print('uploaded ${message.data.localKey}');
      final event = devent as RxUploadDone;
      if (event.data.file.id != message.data.key) return;
      if (!_doneCompleter.isCompleted) _doneCompleter.complete();
    });

    try {
      await controller.startUpload(message.data.key);
      if (!_doneCompleter.isCompleted) await _doneCompleter.future.timeout(Duration(seconds: 20));
      _doneSub.cancel();
    } catch (e) {
      print('Upload error, reuploading $e , ${message.data.localKey}');
      try {
        socketApi.connection.whenConnected.timeout(Duration(seconds: 10));
      } catch (e) {
        // we lost the connection
        return;
      }
      if (tryN < (kIsWeb ? 2 : 10)) {
        await Future.delayed(Duration(seconds: 1));
        _doneSub.cancel();
        await __onUploadStart(message, tryN + 1);
      }
    }

    if (kIsWeb && tryN == 0) {
      database.socketRxEventDao.invalidateCacheForCacheUuid(message);
    }
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

  FilesController? filesController;
  late Stream<List<int>> _data;
  late String remoteKey;
  late SocketApi uploadApi;
  Completer? _uploadCompleter;
  Completer? _targetSizeCompleter;
  int _targetSize = 0;
  bool _uploadInProgress = false;

  bool get uploadInProgress => _uploadInProgress;

  FileUploadController.fromFile(this.socketApi, File file, this.getUploadUrl,
      {required this.localKey, this.extension = ''}) {
    _data = file.openRead();
  }

  FileUploadController.fromPath(this.socketApi, String path, this.getUploadUrl,
      {required this.localKey, this.extension = ''}) {
    _data = File(path).openRead();
  }

  FileUploadController.fromStream(this.socketApi, this._data, this.getUploadUrl,
      {required this.localKey, this.extension = ''});

  Future startUpload(String key) {
    remoteKey = key;
    _uploadCompleter = Completer();
    _onUploadStart();
    return _uploadCompleter!.future;
  }

  void dispose(bool failed) {
    if (uploadInProgress) throw Exception('upload must be completed');
    if (!(_targetSizeCompleter?.isCompleted ?? true)) {
      _targetSizeCompleter!.completeError(Exception('disconencted'));
    }
    cancelSubscriptions();
    uploadApi?.close();

    if (_uploadCompleter?.isCompleted ?? true) return;
    if (failed) {
      _uploadCompleter?.completeError(Exception('Upload failed'));
    } else {
      _uploadCompleter?.complete();
    }
  }

  void _onUploadStart() {
    _log('upload started (key: $remoteKey)');
    _uploadInProgress = true;
    uploadApi = SocketApi(getUploadUrl(remoteKey), alwaysNew: true);
    uploadApi.connection.autoReconnect = false;
    uploadApi.setAuth(socketApi.token);
    listen(uploadApi.connection.connected.changes, (bool isConnected) {
      if (!isConnected) {
        dispose(_uploadInProgress);
        _uploadInProgress = false;
      }
    });
    listen(uploadApi.getMessageHandler(RxUploadProgress()), _onProgressUpdate);

    // send the data when connected
    uploadApi.connection.whenConnected.timeout(Duration(seconds: 5)).then(
      (_) async {
        _log('upload api connected');
        bool failed = false;
        await for (List<int> chunk in _data) {
          _log('writing chunk (${chunk.length} bytes)');
          _targetSize += chunk.length;
          _targetSizeCompleter = Completer();
          try {
            uploadApi.connection.channel!.sink.add(chunk);
            await _targetSizeCompleter!.future.timeout(Duration(seconds: 20)); // FIXME: handle this better?
          } catch (e) {
            _log('upload failed $e');
            failed = true;
            break;
          }
        }
        uploadApi.sendMessage(TxUploadEnd(UploadEnd()));
        _uploadInProgress = false;
        _log('upload done');
        dispose(failed);
      },
    ).catchError((e) => _uploadCompleter
        ?.completeError(Exception('Could not establish connection to ${uploadApi.connection.address}')));
  }

  void _log(String message) {
    if (debug) print('FileUploadController[$localKey]: $message');
  }

  void _onProgressUpdate(RxUploadProgress message) {
    filesController?._progressEvents?.add(message);
    if (message.data.key != remoteKey) return;
    _log('uploaded ${message.data.nBytes} bytes');
    if (message.data.nBytes == _targetSize) {
      _targetSizeCompleter?.complete();
    }
  }

  void cancel() {
    _uploadInProgress = false;
    dispose(false);
  }
}
