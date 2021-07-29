///
//  Generated code. Do not modify.
//  source: uploader.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'uploader.pbenum.dart';

export 'uploader.pbenum.dart';

class UploadTask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadTask', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'uploader'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime')
    ..e<UploadStatus>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: UploadStatus.scheduled, valueOf: UploadStatus.valueOf, enumValues: UploadStatus.values)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'retryCounter', $pb.PbFieldType.O3)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..m<$core.String, $core.String>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', entryClassName: 'UploadTask.MetadataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('uploader'))
    ..hasRequiredFields = false
  ;

  UploadTask._() : super();
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
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (created != null) {
      _result.created = created;
    }
    if (path != null) {
      _result.path = path;
    }
    if (name != null) {
      _result.name = name;
    }
    if (mime != null) {
      _result.mime = mime;
    }
    if (status != null) {
      _result.status = status;
    }
    if (retryCounter != null) {
      _result.retryCounter = retryCounter;
    }
    if (error != null) {
      _result.error = error;
    }
    if (fingerprint != null) {
      _result.fingerprint = fingerprint;
    }
    if (url != null) {
      _result.url = url;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory UploadTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadTask clone() => UploadTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadTask copyWith(void Function(UploadTask) updates) => super.copyWith((message) => updates(message as UploadTask)) as UploadTask; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadTask create() => UploadTask._();
  UploadTask createEmptyInstance() => create();
  static $pb.PbList<UploadTask> createRepeated() => $pb.PbList<UploadTask>();
  @$core.pragma('dart2js:noInline')
  static UploadTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadTask>(create);
  static UploadTask? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get created => $_getI64(0);
  @$pb.TagNumber(1)
  set created($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreated() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreated() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mime => $_getSZ(3);
  @$pb.TagNumber(4)
  set mime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMime() => $_has(3);
  @$pb.TagNumber(4)
  void clearMime() => clearField(4);

  @$pb.TagNumber(5)
  UploadStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(UploadStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get retryCounter => $_getIZ(5);
  @$pb.TagNumber(6)
  set retryCounter($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRetryCounter() => $_has(5);
  @$pb.TagNumber(6)
  void clearRetryCounter() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get error => $_getSZ(6);
  @$pb.TagNumber(7)
  set error($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasError() => $_has(6);
  @$pb.TagNumber(7)
  void clearError() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get fingerprint => $_getSZ(7);
  @$pb.TagNumber(8)
  set fingerprint($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFingerprint() => $_has(7);
  @$pb.TagNumber(8)
  void clearFingerprint() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get url => $_getSZ(8);
  @$pb.TagNumber(9)
  set url($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearUrl() => clearField(9);

  @$pb.TagNumber(10)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(9);
}

class UploadUFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadUFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'uploader'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileId')
    ..aOM<UploadTask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'task', subBuilder: UploadTask.create)
    ..hasRequiredFields = false
  ;

  UploadUFile._() : super();
  factory UploadUFile({
    $core.String? fileId,
    UploadTask? task,
  }) {
    final _result = create();
    if (fileId != null) {
      _result.fileId = fileId;
    }
    if (task != null) {
      _result.task = task;
    }
    return _result;
  }
  factory UploadUFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadUFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadUFile clone() => UploadUFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadUFile copyWith(void Function(UploadUFile) updates) => super.copyWith((message) => updates(message as UploadUFile)) as UploadUFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadUFile create() => UploadUFile._();
  UploadUFile createEmptyInstance() => create();
  static $pb.PbList<UploadUFile> createRepeated() => $pb.PbList<UploadUFile>();
  @$core.pragma('dart2js:noInline')
  static UploadUFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadUFile>(create);
  static UploadUFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileId() => clearField(1);

  @$pb.TagNumber(2)
  UploadTask get task => $_getN(1);
  @$pb.TagNumber(2)
  set task(UploadTask v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTask() => $_has(1);
  @$pb.TagNumber(2)
  void clearTask() => clearField(2);
  @$pb.TagNumber(2)
  UploadTask ensureTask() => $_ensure(1);
}

class DeleteUFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteUFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'uploader'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteUFile._() : super();
  factory DeleteUFile({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteUFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteUFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteUFile clone() => DeleteUFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteUFile copyWith(void Function(DeleteUFile) updates) => super.copyWith((message) => updates(message as DeleteUFile)) as DeleteUFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteUFile create() => DeleteUFile._();
  DeleteUFile createEmptyInstance() => create();
  static $pb.PbList<DeleteUFile> createRepeated() => $pb.PbList<DeleteUFile>();
  @$core.pragma('dart2js:noInline')
  static DeleteUFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteUFile>(create);
  static DeleteUFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UploadSlot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadSlot', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'uploader'), createEmptyInstance: create)
    ..aOM<UFile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file', subBuilder: UFile.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', entryClassName: 'UploadSlot.MetadataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('uploader'))
    ..hasRequiredFields = false
  ;

  UploadSlot._() : super();
  factory UploadSlot({
    UFile? file,
    $core.Map<$core.String, $core.String>? metadata,
  }) {
    final _result = create();
    if (file != null) {
      _result.file = file;
    }
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    return _result;
  }
  factory UploadSlot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadSlot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadSlot clone() => UploadSlot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadSlot copyWith(void Function(UploadSlot) updates) => super.copyWith((message) => updates(message as UploadSlot)) as UploadSlot; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadSlot create() => UploadSlot._();
  UploadSlot createEmptyInstance() => create();
  static $pb.PbList<UploadSlot> createRepeated() => $pb.PbList<UploadSlot>();
  @$core.pragma('dart2js:noInline')
  static UploadSlot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadSlot>(create);
  static UploadSlot? _defaultInstance;

  @$pb.TagNumber(1)
  UFile get file => $_getN(0);
  @$pb.TagNumber(1)
  set file(UFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => clearField(1);
  @$pb.TagNumber(1)
  UFile ensureFile() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(1);
}

class UFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'uploader'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'src')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preview')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'previewLarge', protoName: 'previewLarge')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uploadTask')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localPath')
    ..hasRequiredFields = false
  ;

  UFile._() : super();
  factory UFile({
    $core.String? id,
    $core.String? src,
    $core.String? preview,
    $core.String? previewLarge,
    $core.String? name,
    $core.String? uploadTask,
    $core.String? localPath,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (src != null) {
      _result.src = src;
    }
    if (preview != null) {
      _result.preview = preview;
    }
    if (previewLarge != null) {
      _result.previewLarge = previewLarge;
    }
    if (name != null) {
      _result.name = name;
    }
    if (uploadTask != null) {
      _result.uploadTask = uploadTask;
    }
    if (localPath != null) {
      _result.localPath = localPath;
    }
    return _result;
  }
  factory UFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UFile clone() => UFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UFile copyWith(void Function(UFile) updates) => super.copyWith((message) => updates(message as UFile)) as UFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UFile create() => UFile._();
  UFile createEmptyInstance() => create();
  static $pb.PbList<UFile> createRepeated() => $pb.PbList<UFile>();
  @$core.pragma('dart2js:noInline')
  static UFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UFile>(create);
  static UFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get src => $_getSZ(1);
  @$pb.TagNumber(2)
  set src($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrc() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrc() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get preview => $_getSZ(2);
  @$pb.TagNumber(3)
  set preview($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPreview() => $_has(2);
  @$pb.TagNumber(3)
  void clearPreview() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get previewLarge => $_getSZ(3);
  @$pb.TagNumber(4)
  set previewLarge($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPreviewLarge() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreviewLarge() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get uploadTask => $_getSZ(5);
  @$pb.TagNumber(6)
  set uploadTask($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUploadTask() => $_has(5);
  @$pb.TagNumber(6)
  void clearUploadTask() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get localPath => $_getSZ(6);
  @$pb.TagNumber(7)
  set localPath($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLocalPath() => $_has(6);
  @$pb.TagNumber(7)
  void clearLocalPath() => clearField(7);
}

