// This is a generated file - do not edit.
//
// Generated from sfiles.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

///
/// type = 'upload-start'
/// origin = server
/// client cache = days(7)
/// client cache_keys = text('local_key')
class UploadStartSlot extends $pb.GeneratedMessage {
  factory UploadStartSlot({
    $core.String? key,
    $core.String? localKey,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (localKey != null) result.localKey = localKey;
    return result;
  }

  UploadStartSlot._();

  factory UploadStartSlot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadStartSlot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadStartSlot',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'sfiles'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'localKey')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadStartSlot clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadStartSlot copyWith(void Function(UploadStartSlot) updates) =>
      super.copyWith((message) => updates(message as UploadStartSlot))
          as UploadStartSlot;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadStartSlot create() => UploadStartSlot._();
  @$core.override
  UploadStartSlot createEmptyInstance() => create();
  static $pb.PbList<UploadStartSlot> createRepeated() =>
      $pb.PbList<UploadStartSlot>();
  @$core.pragma('dart2js:noInline')
  static UploadStartSlot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadStartSlot>(create);
  static UploadStartSlot? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get localKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set localKey($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLocalKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalKey() => $_clearField(2);
}

///
/// type = 'upload-progress'
/// origin = server
class UploadProgress extends $pb.GeneratedMessage {
  factory UploadProgress({
    $fixnum.Int64? nBytes,
    $core.String? key,
    $core.String? localKey,
  }) {
    final result = create();
    if (nBytes != null) result.nBytes = nBytes;
    if (key != null) result.key = key;
    if (localKey != null) result.localKey = localKey;
    return result;
  }

  UploadProgress._();

  factory UploadProgress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadProgress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadProgress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'sfiles'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nBytes')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..aOS(3, _omitFieldNames ? '' : 'localKey')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadProgress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadProgress copyWith(void Function(UploadProgress) updates) =>
      super.copyWith((message) => updates(message as UploadProgress))
          as UploadProgress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadProgress create() => UploadProgress._();
  @$core.override
  UploadProgress createEmptyInstance() => create();
  static $pb.PbList<UploadProgress> createRepeated() =>
      $pb.PbList<UploadProgress>();
  @$core.pragma('dart2js:noInline')
  static UploadProgress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadProgress>(create);
  static UploadProgress? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set nBytes($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearNBytes() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get localKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set localKey($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocalKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocalKey() => $_clearField(3);
}

///
/// type = 'upload-done'
/// origin = server
class UploadDone extends $pb.GeneratedMessage {
  factory UploadDone({
    $core.String? key,
    UploadedFile? file,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (file != null) result.file = file;
    return result;
  }

  UploadDone._();

  factory UploadDone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadDone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadDone',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'sfiles'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOM<UploadedFile>(2, _omitFieldNames ? '' : 'file',
        subBuilder: UploadedFile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadDone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadDone copyWith(void Function(UploadDone) updates) =>
      super.copyWith((message) => updates(message as UploadDone)) as UploadDone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadDone create() => UploadDone._();
  @$core.override
  UploadDone createEmptyInstance() => create();
  static $pb.PbList<UploadDone> createRepeated() => $pb.PbList<UploadDone>();
  @$core.pragma('dart2js:noInline')
  static UploadDone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadDone>(create);
  static UploadDone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  UploadedFile get file => $_getN(1);
  @$pb.TagNumber(2)
  set file(UploadedFile value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearFile() => $_clearField(2);
  @$pb.TagNumber(2)
  UploadedFile ensureFile() => $_ensure(1);
}

class UploadedFile extends $pb.GeneratedMessage {
  factory UploadedFile({
    $core.String? localKey,
    $core.String? url,
    $core.String? id,
    $core.String? mime,
    $core.String? thumbUrl,
    $core.String? name,
    $core.bool? downloadable,
  }) {
    final result = create();
    if (localKey != null) result.localKey = localKey;
    if (url != null) result.url = url;
    if (id != null) result.id = id;
    if (mime != null) result.mime = mime;
    if (thumbUrl != null) result.thumbUrl = thumbUrl;
    if (name != null) result.name = name;
    if (downloadable != null) result.downloadable = downloadable;
    return result;
  }

  UploadedFile._();

  factory UploadedFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadedFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadedFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'sfiles'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'localKey')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..aOS(3, _omitFieldNames ? '' : 'id')
    ..aOS(4, _omitFieldNames ? '' : 'mime')
    ..aOS(5, _omitFieldNames ? '' : 'thumbUrl')
    ..aOS(6, _omitFieldNames ? '' : 'name')
    ..aOB(7, _omitFieldNames ? '' : 'downloadable')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadedFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadedFile copyWith(void Function(UploadedFile) updates) =>
      super.copyWith((message) => updates(message as UploadedFile))
          as UploadedFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadedFile create() => UploadedFile._();
  @$core.override
  UploadedFile createEmptyInstance() => create();
  static $pb.PbList<UploadedFile> createRepeated() =>
      $pb.PbList<UploadedFile>();
  @$core.pragma('dart2js:noInline')
  static UploadedFile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadedFile>(create);
  static UploadedFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get localKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set localKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocalKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(3)
  set id($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get mime => $_getSZ(3);
  @$pb.TagNumber(4)
  set mime($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMime() => $_has(3);
  @$pb.TagNumber(4)
  void clearMime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get thumbUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set thumbUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasThumbUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearThumbUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get downloadable => $_getBF(6);
  @$pb.TagNumber(7)
  set downloadable($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDownloadable() => $_has(6);
  @$pb.TagNumber(7)
  void clearDownloadable() => $_clearField(7);
}

///
/// type = 'upload-start'
/// origin = client
/// client cache = years(1)
/// client cache_keys = text('local_key')
class UploadStart extends $pb.GeneratedMessage {
  factory UploadStart({
    $core.String? localKey,
    $core.String? extension_2,
    $core.String? name,
    $core.String? mime,
  }) {
    final result = create();
    if (localKey != null) result.localKey = localKey;
    if (extension_2 != null) result.extension_2 = extension_2;
    if (name != null) result.name = name;
    if (mime != null) result.mime = mime;
    return result;
  }

  UploadStart._();

  factory UploadStart.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadStart.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadStart',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'sfiles'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'localKey')
    ..aOS(2, _omitFieldNames ? '' : 'extension')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'mime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadStart clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadStart copyWith(void Function(UploadStart) updates) =>
      super.copyWith((message) => updates(message as UploadStart))
          as UploadStart;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadStart create() => UploadStart._();
  @$core.override
  UploadStart createEmptyInstance() => create();
  static $pb.PbList<UploadStart> createRepeated() => $pb.PbList<UploadStart>();
  @$core.pragma('dart2js:noInline')
  static UploadStart getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadStart>(create);
  static UploadStart? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get localKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set localKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocalKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get extension_2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set extension_2($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExtension_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtension_2() => $_clearField(2);

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
}

///
/// type = 'delete-file'
/// origin = client
class DeleteFile extends $pb.GeneratedMessage {
  factory DeleteFile({
    UploadedFile? file,
  }) {
    final result = create();
    if (file != null) result.file = file;
    return result;
  }

  DeleteFile._();

  factory DeleteFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'sfiles'),
      createEmptyInstance: create)
    ..aOM<UploadedFile>(1, _omitFieldNames ? '' : 'file',
        subBuilder: UploadedFile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteFile copyWith(void Function(DeleteFile) updates) =>
      super.copyWith((message) => updates(message as DeleteFile)) as DeleteFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteFile create() => DeleteFile._();
  @$core.override
  DeleteFile createEmptyInstance() => create();
  static $pb.PbList<DeleteFile> createRepeated() => $pb.PbList<DeleteFile>();
  @$core.pragma('dart2js:noInline')
  static DeleteFile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteFile>(create);
  static DeleteFile? _defaultInstance;

  @$pb.TagNumber(1)
  UploadedFile get file => $_getN(0);
  @$pb.TagNumber(1)
  set file(UploadedFile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => $_clearField(1);
  @$pb.TagNumber(1)
  UploadedFile ensureFile() => $_ensure(0);
}

///
/// type = 'upload-end'
/// origin = client
class UploadEnd extends $pb.GeneratedMessage {
  factory UploadEnd() => create();

  UploadEnd._();

  factory UploadEnd.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadEnd.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadEnd',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'sfiles'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadEnd clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadEnd copyWith(void Function(UploadEnd) updates) =>
      super.copyWith((message) => updates(message as UploadEnd)) as UploadEnd;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadEnd create() => UploadEnd._();
  @$core.override
  UploadEnd createEmptyInstance() => create();
  static $pb.PbList<UploadEnd> createRepeated() => $pb.PbList<UploadEnd>();
  @$core.pragma('dart2js:noInline')
  static UploadEnd getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadEnd>(create);
  static UploadEnd? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
