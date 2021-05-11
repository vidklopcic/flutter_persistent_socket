import 'dart:async';
import 'package:cross_file/cross_file.dart' show XFile;
export 'package:cross_file/cross_file.dart' show XFile;
import 'package:flutter/foundation.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/persistence/database.dart';
import 'package:flutter_persistent_socket/proto/uploader.pb.dart';
import 'package:flutter_persistent_socket/util.dart';
import 'package:tus_client/tus_client.dart';
export 'package:tus_client/tus_client.dart' show TusClient;
import '../messages.dart';
export 'file_picker/file_picker_stub.dart'
    if (dart.library.io) 'file_picker/file_picker_mobile.dart'
    if (dart.library.html) 'file_picker/file_picker_web.dart';
export 'file_picker/file_picker_types.dart';

class FPSUploader {
  final FPSUploaderConfig config;
  final SocketApi api;
  _FPSUploaderInstance _instance;
  TusStore store;

  FPSUploader(this.api, {this.config = const FPSUploaderConfig()}) {
    store = FPSTusStore(api);
    _instance = _FPSUploaderInstance._(this);
  }

  List<UploadTaskHolder> get tasks => _instance.tasks;

  List<UploadTaskHolder> get uploading =>
      _instance.tasks.where((element) => element.status == UploadStatus.uploading).toList();

  List<UploadTaskHolder> get scheduled =>
      _instance.tasks.where((element) => element.status == UploadStatus.scheduled).toList();

  List<UploadTaskHolder> get paused =>
      _instance.tasks.where((element) => element.status == UploadStatus.paused).toList();

  Future<bool> schedule(TusClient client, UploadTaskHolder task, {bool resume = false}) =>
      _instance.schedule(client, task, resume);

  void pause(UploadTaskHolder task) => _instance.pause(task);

  Future<bool> resume(UploadTaskHolder task) => _instance.resume(task);

  Future<List<UploadTaskHolder>> restore() => _instance.restore();

  Future cancel(UploadTaskHolder task) => _instance.cancel(task);

  UploadTaskHolder getTask(String fingerprint) => _instance.taskMap[fingerprint];
}

class _FPSUploaderInstance {
  final FPSUploader uploader;
  Map<String, UploadTaskHolder> taskMap = {};
  List<UploadTaskHolder> tasks = [];
  List<UploadTaskHolder> pending = [];
  List<UploadTaskHolder> inProgress = [];
  TusClient client;

  _FPSUploaderInstance._(this.uploader);

  Future<List<UploadTaskHolder>> restore() async {
    if (kIsWeb) {
      return [];
    }
    return (await uploader.api.getFromCache(RxUploadTask()) ?? []).map((e) => UploadTaskHolder._existing(e)).toList();
  }

  Future<bool> schedule(TusClient client, UploadTaskHolder task, bool resume) async {
    assert(task._client == null);
    if (resume && !await client.resume()) {
      return false;
    }
    task._client = client;
    tasks.add(task);
    taskMap[task.data.fingerprint] = task;
    _startUpload(task);
    return true;
  }

  void pause(UploadTaskHolder task) {
    assert(task.status == UploadStatus.uploading);
    task._client.pause();
    task._setStatus(UploadStatus.paused);
  }

  Future<bool> resume(UploadTaskHolder task) async {
    assert(task.status == UploadStatus.paused || task._task.message.fromCache);
    if (await task._client.resume()) {
      task._client.upload();
      task._setStatus(UploadStatus.uploading);
    } else {
      return false;
    }
  }

  void _startUpload(UploadTaskHolder task) {
    if (uploader.config.nConcurrent <= inProgress.length) {
      pending.add(task);
      return;
    }
    inProgress.add(task);
    if (task.status == UploadStatus.uploading) {
      if (pending.isNotEmpty) {
        _startUpload(pending.removeLast());
      }
      return;
    }
    if (task._client == null) return;
    task._setStatus(UploadStatus.uploading);
    task._client
        .upload(
      onProgress: task._onProgress,
      onComplete: () {
        inProgress.remove(task);
        if (pending.isNotEmpty) {
          _startUpload(pending.removeLast());
        }
        task._onComplete();
        tasks.remove(task);
        taskMap.remove(task.data.fingerprint);
      },
    )
        .catchError((e) {
      inProgress.remove(task);
      if (pending.isNotEmpty) {
        _startUpload(pending.removeLast());
      }
      task._onError(e.toString());
      tasks.remove(task);
      taskMap.remove(task.data.fingerprint);
      if (e.runtimeType == ProtocolException && !e.toString().contains('(500)')) {
        // 410.. means that resource is missing
        task._delete();
        task._dispose();
      }
    });
  }

  Future cancel(UploadTaskHolder task) async {
    task._client?.pause();
    tasks.remove(task);
    taskMap.remove(task.data.fingerprint);
    await task._delete();
  }
}

class UploadTaskHolder {
  XFile xFile;
  final RxUploadTask _task;
  final StreamController<UploadStatusUpdate> _statusEvents = StreamController.broadcast();
  final StreamController<UploadProgressUpdate> _progressEvents = StreamController.broadcast();
  TusClient _client;

  Stream<UploadStatusUpdate> get statusEvents => _statusEvents.stream;

  Stream<UploadProgressUpdate> get progressEvents => _progressEvents.stream;

  UploadStatus get status => _task.data.status;
  UploadProgressUpdate _progress;

  UploadProgressUpdate get progress => _progress ?? UploadProgressUpdate(this, 0);

  UploadTask get data => _task.data;

  UploadTaskHolder._existing(this._task) : xFile = XFile(_task.data.path) {
    _task.data.status = UploadStatus.restored;
  }

  UploadTaskHolder.create(XFile file, {Map<String, String> metadata}) : _task = RxUploadTask() {
    _task.data.status = UploadStatus.scheduled;
    _task.data.created = FPSUtil().toTimestamp(DateTime.now());
    _task.data.name = file.name;
    _task.data.path = file.path;
    _task.data.fingerprint = TusClient(null, file).fingerprint;
    if (file.mimeType != null) {
      _task.data.mime = file.mimeType;
    }
    _task.data.metadata.addAll(metadata ?? {});
    xFile = file;
    _save();
  }

  Future _save() async {
    if (kIsWeb) return;
    print('saving task $_task');
    await _task.save();
  }

  Future _delete() async {
    if (kIsWeb) return;
    await database.socketRxEventDao.invalidateCacheForCacheUuid(_task);
  }

  void _dispose() {
    _statusEvents.close();
    _progressEvents.close();
  }

  void _onProgress(double progress) {
    _progress = UploadProgressUpdate(this, progress);
    _progressEvents.add(_progress);
  }

  void _onComplete() {
    _setStatus(UploadStatus.done);
    _delete();
    _dispose();
  }

  void _setStatus(UploadStatus status) {
    if (status == _task.data.status) return;
    _task.data.status = status;
    _statusEvents.add(UploadStatusUpdate(this, status));
  }

  void _onError(String string) {
    _task.data.error = string;
    _setStatus(UploadStatus.error);
    _save();
  }
}

class UploadStatusUpdate {
  final UploadTaskHolder holder;
  final UploadStatus status;

  UploadTask get task => holder.data;

  UploadStatusUpdate(this.holder, this.status);
}

class UploadProgressUpdate {
  final UploadTaskHolder holder;

  UploadTask get task => holder.data;
  final double progress;

  UploadProgressUpdate(this.holder, this.progress);
}

class FPSUploaderConfig {
  final int nConcurrent;

  const FPSUploaderConfig({
    this.nConcurrent = 5,
  });
}

class FPSTusStore extends TusStore {
  final SocketApi api;

  FPSTusStore(this.api);

  Future<RxUploadTask> _message(String fingerprint) async {
    final message = RxUploadTask()..data.fingerprint = fingerprint;
    final events = await api.getFromCache(
      message,
      filter: (q) => q..where((tbl) => tbl.uuid.equals(message.cacheUuid)),
    );
    return events?.first;
  }

  @override
  Future<Uri> get(String fingerprint) async {
    final event = await _message(fingerprint);
    if (event == null || !event.data.hasUrl()) return null;
    return Uri.parse(event.data.url);
  }

  @override
  Future<void> remove(String fingerprint) async {
    final message = RxUploadTask()..data.fingerprint = fingerprint;
    await database.socketRxEventDao.invalidateCacheForCacheUuid(message);
  }

  @override
  Future<void> set(String fingerprint, Uri url) async {
    final message = await _message(fingerprint) ?? RxUploadTask();
    message.data.fingerprint = fingerprint;
    message.data.url = url.toString();
    await message.save();
  }
}
