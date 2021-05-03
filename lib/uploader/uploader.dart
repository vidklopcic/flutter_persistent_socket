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

typedef FPSUploaderTusFactory = TusClient Function(UploadTaskHolder task, XFile file);

class FPSUploader {
  final FPSUploaderConfig config;
  final SocketApi api;
  final FPSUploaderTusFactory tusFactory;
  _FPSUploaderInstance _instance;

  FPSUploader(this.api, this.tusFactory, {this.config = const FPSUploaderConfig()});

  Future init() async {
    assert(_instance == null);
    _instance = _FPSUploaderInstance._(this);
    await _instance.init();
  }

  List<UploadTaskHolder> get tasks => _instance.tasks;

  List<UploadTaskHolder> get uploading =>
      _instance.tasks.where((element) => element.status == UploadStatus.uploading).toList();

  List<UploadTaskHolder> get scheduled =>
      _instance.tasks.where((element) => element.status == UploadStatus.scheduled).toList();

  List<UploadTaskHolder> get paused =>
      _instance.tasks.where((element) => element.status == UploadStatus.paused).toList();

  List<UploadTaskHolder> get restored => _instance.tasks.where((element) => element._task.message.fromCache).toList();

  void schedule(UploadTaskHolder task) => _instance.schedule(task);
}

class _FPSUploaderInstance {
  final FPSUploader uploader;
  List<UploadTaskHolder> tasks = [];
  List<UploadTaskHolder> pending = [];
  List<UploadTaskHolder> inProgress = [];
  TusClient client;

  _FPSUploaderInstance._(this.uploader);

  Future init() async {
    if (!kIsWeb) {
      tasks =
          (await uploader.api.getFromCache(RxUploadTask()) ?? []).map((e) => UploadTaskHolder._existing(e)).toList();
    }
  }

  void schedule(UploadTaskHolder task) {
    tasks.add(task);
    _startUpload(task);
  }

  void _startUpload(UploadTaskHolder task) {
    if (uploader.config.nConcurrent <= inProgress.length) {
      pending.add(task);
      return;
    }
    assert(task._client == null && task.status != UploadStatus.uploading);
    task._client = uploader.tusFactory(task, task._file);
    if (task._client == null) return;
    task.setStatus(UploadStatus.uploading);
    task._client
        .upload(
          onProgress: task._onProgress,
          onComplete: () {
            if (pending.isNotEmpty) {
              _startUpload(pending.removeLast());
            }
            task._onComplete();
            tasks.remove(task);
          },
        )
        .catchError((e) => task._onError(e.runtimeType == ProtocolException ? e.message : e.toString()));
  }

  void cancel(UploadTaskHolder task) {
    task._client.pause();
    task._delete();
    tasks.remove(task);
  }
}

class UploadTaskHolder {
  XFile _file;
  final RxUploadTask _task;
  final StreamController<UploadStatusUpdate> _statusEvents = StreamController.broadcast();
  final StreamController<UploadProgressUpdate> _progressEvents = StreamController.broadcast();
  final Map<String, String> metadata;
  TusClient _client;

  Stream<UploadStatusUpdate> get statusEvents => _statusEvents.stream;

  Stream<UploadProgressUpdate> get progressEvents => _progressEvents.stream;

  UploadStatus get status => _task.data.status;
  UploadProgressUpdate _progress;

  UploadProgressUpdate get progress => _progress ?? UploadProgressUpdate(this, 0);

  UploadTask get data => _task.data;

  Future<int> length() async => await _file?.length() ?? 0;

  UploadTaskHolder._existing(this._task)
      : _file = XFile(_task.data.path),
        metadata = {} {
    _task.data.status = UploadStatus.scheduled;
  }

  UploadTaskHolder.create(XFile file, {this.metadata = const {}}) : _task = RxUploadTask() {
    _task.data.status = UploadStatus.scheduled;
    _task.data.created = FPSUtil().toTimestamp(DateTime.now());
    _task.data.name = file.name;
    _task.data.path = file.path;
    _task.data.mime = file.mimeType;
    _file = file;
    _task.data.fingerprint = TusClient(null, _file).fingerprint;
    _save();
  }

  Future _save() async {
    if (kIsWeb) return;
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
    setStatus(UploadStatus.done);
    _delete();
    _dispose();
  }

  void setStatus(UploadStatus status) {
    if (status == _task.data.status) return;
    _task.data.status = status;
    _statusEvents.add(UploadStatusUpdate(this, status));
  }

  void _onError(String string) {
    _task.data.error = string;
    setStatus(UploadStatus.error);
    _save();
  }

  Future<bool> resume() {
    assert(status == UploadStatus.paused);
    return _client.resume();
  }

  void pause() {
    assert(status == UploadStatus.uploading);
    _client.pause();
    setStatus(UploadStatus.paused);
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
    return events.isEmpty ? null : events.first;
  }

  @override
  Future<Uri> get(String fingerprint) async {
    final event = await _message(fingerprint);
    if (event == null) return null;
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
