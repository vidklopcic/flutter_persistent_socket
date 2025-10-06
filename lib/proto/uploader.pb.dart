// This is a generated file - do not edit.
//
// Generated from uploader.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'uploader.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'uploader.pbenum.dart';

///
/// type = 'upload-task'
/// origin = server
/// client cache = years(1)
/// client cache_keys = text('fingerprint')
class UploadTask extends $pb.GeneratedMessage {
  factory UploadTask({
    $fixnum.Int64? created,
    $core.String? path,
    $core.String? name,
    $core.String? mime,
    UploadStatus? status,
    $core.int? retryCounter,
    $core.String? error,
    $core.String? fingerprint,
    $core.String? url,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? metadata,
  }) {
    final result = create();
    if (created != null) result.created = created;
    if (path != null) result.path = path;
    if (name != null) result.name = name;
    if (mime != null) result.mime = mime;
    if (status != null) result.status = status;
    if (retryCounter != null) result.retryCounter = retryCounter;
    if (error != null) result.error = error;
    if (fingerprint != null) result.fingerprint = fingerprint;
    if (url != null) result.url = url;
    if (metadata != null) result.metadata.addEntries(metadata);
    return result;
  }

  UploadTask._();

  factory UploadTask.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadTask.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadTask',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'uploader'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'created', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'mime')
    ..aE<UploadStatus>(5, _omitFieldNames ? '' : 'status',
        enumValues: UploadStatus.values)
    ..aI(6, _omitFieldNames ? '' : 'retryCounter')
    ..aOS(7, _omitFieldNames ? '' : 'error')
    ..aOS(8, _omitFieldNames ? '' : 'fingerprint')
    ..aOS(9, _omitFieldNames ? '' : 'url')
    ..m<$core.String, $core.String>(10, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'UploadTask.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('uploader'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadTask clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadTask copyWith(void Function(UploadTask) updates) =>
      super.copyWith((message) => updates(message as UploadTask)) as UploadTask;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadTask create() => UploadTask._();
  @$core.override
  UploadTask createEmptyInstance() => create();
  static $pb.PbList<UploadTask> createRepeated() => $pb.PbList<UploadTask>();
  @$core.pragma('dart2js:noInline')
  static UploadTask getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadTask>(create);
  static UploadTask? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get created => $_getI64(0);
  @$pb.TagNumber(1)
  set created($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCreated() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreated() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get mime => $_getSZ(3);
  @$pb.TagNumber(4)
  set mime($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMime() => $_has(3);
  @$pb.TagNumber(4)
  void clearMime() => $_clearField(4);

  @$pb.TagNumber(5)
  UploadStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(UploadStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get retryCounter => $_getIZ(5);
  @$pb.TagNumber(6)
  set retryCounter($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRetryCounter() => $_has(5);
  @$pb.TagNumber(6)
  void clearRetryCounter() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get error => $_getSZ(6);
  @$pb.TagNumber(7)
  set error($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasError() => $_has(6);
  @$pb.TagNumber(7)
  void clearError() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get fingerprint => $_getSZ(7);
  @$pb.TagNumber(8)
  set fingerprint($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFingerprint() => $_has(7);
  @$pb.TagNumber(8)
  void clearFingerprint() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get url => $_getSZ(8);
  @$pb.TagNumber(9)
  set url($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearUrl() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbMap<$core.String, $core.String> get metadata => $_getMap(9);
}

///
/// type = 'upload-ufile'
/// origin = client
class UploadUFile extends $pb.GeneratedMessage {
  factory UploadUFile({
    $core.String? fileId,
    UploadTask? task,
  }) {
    final result = create();
    if (fileId != null) result.fileId = fileId;
    if (task != null) result.task = task;
    return result;
  }

  UploadUFile._();

  factory UploadUFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadUFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadUFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'uploader'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fileId')
    ..aOM<UploadTask>(2, _omitFieldNames ? '' : 'task',
        subBuilder: UploadTask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadUFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadUFile copyWith(void Function(UploadUFile) updates) =>
      super.copyWith((message) => updates(message as UploadUFile))
          as UploadUFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadUFile create() => UploadUFile._();
  @$core.override
  UploadUFile createEmptyInstance() => create();
  static $pb.PbList<UploadUFile> createRepeated() => $pb.PbList<UploadUFile>();
  @$core.pragma('dart2js:noInline')
  static UploadUFile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadUFile>(create);
  static UploadUFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileId() => $_clearField(1);

  @$pb.TagNumber(2)
  UploadTask get task => $_getN(1);
  @$pb.TagNumber(2)
  set task(UploadTask value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTask() => $_has(1);
  @$pb.TagNumber(2)
  void clearTask() => $_clearField(2);
  @$pb.TagNumber(2)
  UploadTask ensureTask() => $_ensure(1);
}

///
/// type = 'delete-ufile'
/// origin = client
class DeleteUFile extends $pb.GeneratedMessage {
  factory DeleteUFile({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteUFile._();

  factory DeleteUFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteUFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteUFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'uploader'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteUFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteUFile copyWith(void Function(DeleteUFile) updates) =>
      super.copyWith((message) => updates(message as DeleteUFile))
          as DeleteUFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteUFile create() => DeleteUFile._();
  @$core.override
  DeleteUFile createEmptyInstance() => create();
  static $pb.PbList<DeleteUFile> createRepeated() => $pb.PbList<DeleteUFile>();
  @$core.pragma('dart2js:noInline')
  static DeleteUFile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteUFile>(create);
  static DeleteUFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

///
/// type = 'upload-slot'
/// origin = server
class UploadSlot extends $pb.GeneratedMessage {
  factory UploadSlot({
    UFile? file,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? metadata,
  }) {
    final result = create();
    if (file != null) result.file = file;
    if (metadata != null) result.metadata.addEntries(metadata);
    return result;
  }

  UploadSlot._();

  factory UploadSlot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadSlot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadSlot',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'uploader'),
      createEmptyInstance: create)
    ..aOM<UFile>(1, _omitFieldNames ? '' : 'file', subBuilder: UFile.create)
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'UploadSlot.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('uploader'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadSlot clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadSlot copyWith(void Function(UploadSlot) updates) =>
      super.copyWith((message) => updates(message as UploadSlot)) as UploadSlot;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadSlot create() => UploadSlot._();
  @$core.override
  UploadSlot createEmptyInstance() => create();
  static $pb.PbList<UploadSlot> createRepeated() => $pb.PbList<UploadSlot>();
  @$core.pragma('dart2js:noInline')
  static UploadSlot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadSlot>(create);
  static UploadSlot? _defaultInstance;

  @$pb.TagNumber(1)
  UFile get file => $_getN(0);
  @$pb.TagNumber(1)
  set file(UFile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => $_clearField(1);
  @$pb.TagNumber(1)
  UFile ensureFile() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get metadata => $_getMap(1);
}

class UFile extends $pb.GeneratedMessage {
  factory UFile({
    $core.String? id,
    $core.String? src,
    $core.String? preview,
    $core.String? previewLarge,
    $core.String? name,
    $core.String? uploadTask,
    $core.String? localPath,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (src != null) result.src = src;
    if (preview != null) result.preview = preview;
    if (previewLarge != null) result.previewLarge = previewLarge;
    if (name != null) result.name = name;
    if (uploadTask != null) result.uploadTask = uploadTask;
    if (localPath != null) result.localPath = localPath;
    return result;
  }

  UFile._();

  factory UFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'uploader'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'src')
    ..aOS(3, _omitFieldNames ? '' : 'preview')
    ..aOS(4, _omitFieldNames ? '' : 'previewLarge', protoName: 'previewLarge')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOS(6, _omitFieldNames ? '' : 'uploadTask')
    ..aOS(7, _omitFieldNames ? '' : 'localPath')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UFile copyWith(void Function(UFile) updates) =>
      super.copyWith((message) => updates(message as UFile)) as UFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UFile create() => UFile._();
  @$core.override
  UFile createEmptyInstance() => create();
  static $pb.PbList<UFile> createRepeated() => $pb.PbList<UFile>();
  @$core.pragma('dart2js:noInline')
  static UFile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UFile>(create);
  static UFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get src => $_getSZ(1);
  @$pb.TagNumber(2)
  set src($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSrc() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrc() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get preview => $_getSZ(2);
  @$pb.TagNumber(3)
  set preview($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPreview() => $_has(2);
  @$pb.TagNumber(3)
  void clearPreview() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get previewLarge => $_getSZ(3);
  @$pb.TagNumber(4)
  set previewLarge($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPreviewLarge() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreviewLarge() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get uploadTask => $_getSZ(5);
  @$pb.TagNumber(6)
  set uploadTask($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUploadTask() => $_has(5);
  @$pb.TagNumber(6)
  void clearUploadTask() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get localPath => $_getSZ(6);
  @$pb.TagNumber(7)
  set localPath($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLocalPath() => $_has(6);
  @$pb.TagNumber(7)
  void clearLocalPath() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
