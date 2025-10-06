// This is a generated file - do not edit.
//
// Generated from socket_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'socket_api.pbenum.dart';

///
/// type = 'ack'
/// origin = server
class Ack extends $pb.GeneratedMessage {
  factory Ack({
    $core.String? uuid,
    $core.String? errorMessage,
    $core.int? errorCode,
  }) {
    final result = create();
    if (uuid != null) result.uuid = uuid;
    if (errorMessage != null) result.errorMessage = errorMessage;
    if (errorCode != null) result.errorCode = errorCode;
    return result;
  }

  Ack._();

  factory Ack.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Ack.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Ack',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..aOS(2, _omitFieldNames ? '' : 'errorMessage')
    ..aI(4, _omitFieldNames ? '' : 'errorCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Ack clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Ack copyWith(void Function(Ack) updates) =>
      super.copyWith((message) => updates(message as Ack)) as Ack;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ack create() => Ack._();
  @$core.override
  Ack createEmptyInstance() => create();
  static $pb.PbList<Ack> createRepeated() => $pb.PbList<Ack>();
  @$core.pragma('dart2js:noInline')
  static Ack getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ack>(create);
  static Ack? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMessage($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasErrorMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMessage() => $_clearField(2);

  @$pb.TagNumber(4)
  $core.int get errorCode => $_getIZ(2);
  @$pb.TagNumber(4)
  set errorCode($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasErrorCode() => $_has(2);
  @$pb.TagNumber(4)
  void clearErrorCode() => $_clearField(4);
}

///
/// type = 'ilol|ack';
/// origin = server;
class IlolAck extends $pb.GeneratedMessage {
  factory IlolAck({
    $core.String? sourceEventId,
  }) {
    final result = create();
    if (sourceEventId != null) result.sourceEventId = sourceEventId;
    return result;
  }

  IlolAck._();

  factory IlolAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IlolAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IlolAck',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceEventId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IlolAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IlolAck copyWith(void Function(IlolAck) updates) =>
      super.copyWith((message) => updates(message as IlolAck)) as IlolAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IlolAck create() => IlolAck._();
  @$core.override
  IlolAck createEmptyInstance() => create();
  static $pb.PbList<IlolAck> createRepeated() => $pb.PbList<IlolAck>();
  @$core.pragma('dart2js:noInline')
  static IlolAck getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IlolAck>(create);
  static IlolAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sourceEventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceEventId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceEventId() => $_clearField(1);
}

///
/// type = 'ilol|error';
/// origin = server;
class IlolError extends $pb.GeneratedMessage {
  factory IlolError({
    $core.String? sourceEventId,
    $core.String? reason,
  }) {
    final result = create();
    if (sourceEventId != null) result.sourceEventId = sourceEventId;
    if (reason != null) result.reason = reason;
    return result;
  }

  IlolError._();

  factory IlolError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IlolError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IlolError',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceEventId')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IlolError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IlolError copyWith(void Function(IlolError) updates) =>
      super.copyWith((message) => updates(message as IlolError)) as IlolError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IlolError create() => IlolError._();
  @$core.override
  IlolError createEmptyInstance() => create();
  static $pb.PbList<IlolError> createRepeated() => $pb.PbList<IlolError>();
  @$core.pragma('dart2js:noInline')
  static IlolError getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IlolError>(create);
  static IlolError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sourceEventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceEventId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceEventId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

///
/// type = 'async-progress'
/// origin = server
class AsyncProgress extends $pb.GeneratedMessage {
  factory AsyncProgress({
    $core.String? key,
    $core.double? progress,
    $core.String? info,
    $core.bool? done,
    $core.String? errorMessage,
    $core.int? errorCode,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (progress != null) result.progress = progress;
    if (info != null) result.info = info;
    if (done != null) result.done = done;
    if (errorMessage != null) result.errorMessage = errorMessage;
    if (errorCode != null) result.errorCode = errorCode;
    return result;
  }

  AsyncProgress._();

  factory AsyncProgress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AsyncProgress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AsyncProgress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aD(2, _omitFieldNames ? '' : 'progress')
    ..aOS(3, _omitFieldNames ? '' : 'info')
    ..aOB(4, _omitFieldNames ? '' : 'done')
    ..aOS(5, _omitFieldNames ? '' : 'errorMessage')
    ..aI(6, _omitFieldNames ? '' : 'errorCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AsyncProgress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AsyncProgress copyWith(void Function(AsyncProgress) updates) =>
      super.copyWith((message) => updates(message as AsyncProgress))
          as AsyncProgress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AsyncProgress create() => AsyncProgress._();
  @$core.override
  AsyncProgress createEmptyInstance() => create();
  static $pb.PbList<AsyncProgress> createRepeated() =>
      $pb.PbList<AsyncProgress>();
  @$core.pragma('dart2js:noInline')
  static AsyncProgress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AsyncProgress>(create);
  static AsyncProgress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get progress => $_getN(1);
  @$pb.TagNumber(2)
  set progress($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgress() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get info => $_getSZ(2);
  @$pb.TagNumber(3)
  set info($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get done => $_getBF(3);
  @$pb.TagNumber(4)
  set done($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDone() => $_has(3);
  @$pb.TagNumber(4)
  void clearDone() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get errorMessage => $_getSZ(4);
  @$pb.TagNumber(5)
  set errorMessage($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasErrorMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearErrorMessage() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get errorCode => $_getIZ(5);
  @$pb.TagNumber(6)
  set errorCode($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasErrorCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearErrorCode() => $_clearField(6);
}

///
/// type = 'upgrade-api-version'
/// origin = server
class UpgradeApiVersion extends $pb.GeneratedMessage {
  factory UpgradeApiVersion({
    $core.int? latest,
  }) {
    final result = create();
    if (latest != null) result.latest = latest;
    return result;
  }

  UpgradeApiVersion._();

  factory UpgradeApiVersion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpgradeApiVersion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpgradeApiVersion',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'latest')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpgradeApiVersion clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpgradeApiVersion copyWith(void Function(UpgradeApiVersion) updates) =>
      super.copyWith((message) => updates(message as UpgradeApiVersion))
          as UpgradeApiVersion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpgradeApiVersion create() => UpgradeApiVersion._();
  @$core.override
  UpgradeApiVersion createEmptyInstance() => create();
  static $pb.PbList<UpgradeApiVersion> createRepeated() =>
      $pb.PbList<UpgradeApiVersion>();
  @$core.pragma('dart2js:noInline')
  static UpgradeApiVersion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpgradeApiVersion>(create);
  static UpgradeApiVersion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get latest => $_getIZ(0);
  @$pb.TagNumber(1)
  set latest($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLatest() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatest() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
