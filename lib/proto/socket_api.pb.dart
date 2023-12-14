//
//  Generated code. Do not modify.
//  source: socket_api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    if (errorMessage != null) {
      $result.errorMessage = errorMessage;
    }
    if (errorCode != null) {
      $result.errorCode = errorCode;
    }
    return $result;
  }
  Ack._() : super();
  factory Ack.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ack.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ack', package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..aOS(2, _omitFieldNames ? '' : 'errorMessage')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ack clone() => Ack()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ack copyWith(void Function(Ack) updates) => super.copyWith((message) => updates(message as Ack)) as Ack;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ack create() => Ack._();
  Ack createEmptyInstance() => create();
  static $pb.PbList<Ack> createRepeated() => $pb.PbList<Ack>();
  @$core.pragma('dart2js:noInline')
  static Ack getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ack>(create);
  static Ack? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorMessage() => clearField(2);

  @$pb.TagNumber(4)
  $core.int get errorCode => $_getIZ(2);
  @$pb.TagNumber(4)
  set errorCode($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasErrorCode() => $_has(2);
  @$pb.TagNumber(4)
  void clearErrorCode() => clearField(4);
}

///
/// type = 'ilol|ack';
/// origin = server;
class IlolAck extends $pb.GeneratedMessage {
  factory IlolAck({
    $core.String? sourceEventId,
  }) {
    final $result = create();
    if (sourceEventId != null) {
      $result.sourceEventId = sourceEventId;
    }
    return $result;
  }
  IlolAck._() : super();
  factory IlolAck.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IlolAck.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IlolAck', package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceEventId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IlolAck clone() => IlolAck()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IlolAck copyWith(void Function(IlolAck) updates) => super.copyWith((message) => updates(message as IlolAck)) as IlolAck;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IlolAck create() => IlolAck._();
  IlolAck createEmptyInstance() => create();
  static $pb.PbList<IlolAck> createRepeated() => $pb.PbList<IlolAck>();
  @$core.pragma('dart2js:noInline')
  static IlolAck getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IlolAck>(create);
  static IlolAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sourceEventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceEventId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSourceEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceEventId() => clearField(1);
}

///
/// type = 'ilol|error';
/// origin = server;
class IlolError extends $pb.GeneratedMessage {
  factory IlolError({
    $core.String? sourceEventId,
    $core.String? reason,
  }) {
    final $result = create();
    if (sourceEventId != null) {
      $result.sourceEventId = sourceEventId;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  IlolError._() : super();
  factory IlolError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IlolError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IlolError', package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceEventId')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IlolError clone() => IlolError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IlolError copyWith(void Function(IlolError) updates) => super.copyWith((message) => updates(message as IlolError)) as IlolError;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IlolError create() => IlolError._();
  IlolError createEmptyInstance() => create();
  static $pb.PbList<IlolError> createRepeated() => $pb.PbList<IlolError>();
  @$core.pragma('dart2js:noInline')
  static IlolError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IlolError>(create);
  static IlolError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sourceEventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceEventId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSourceEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceEventId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);
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
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (progress != null) {
      $result.progress = progress;
    }
    if (info != null) {
      $result.info = info;
    }
    if (done != null) {
      $result.done = done;
    }
    if (errorMessage != null) {
      $result.errorMessage = errorMessage;
    }
    if (errorCode != null) {
      $result.errorCode = errorCode;
    }
    return $result;
  }
  AsyncProgress._() : super();
  factory AsyncProgress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AsyncProgress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AsyncProgress', package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'progress', $pb.PbFieldType.OD)
    ..aOS(3, _omitFieldNames ? '' : 'info')
    ..aOB(4, _omitFieldNames ? '' : 'done')
    ..aOS(5, _omitFieldNames ? '' : 'errorMessage')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AsyncProgress clone() => AsyncProgress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AsyncProgress copyWith(void Function(AsyncProgress) updates) => super.copyWith((message) => updates(message as AsyncProgress)) as AsyncProgress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AsyncProgress create() => AsyncProgress._();
  AsyncProgress createEmptyInstance() => create();
  static $pb.PbList<AsyncProgress> createRepeated() => $pb.PbList<AsyncProgress>();
  @$core.pragma('dart2js:noInline')
  static AsyncProgress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AsyncProgress>(create);
  static AsyncProgress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get progress => $_getN(1);
  @$pb.TagNumber(2)
  set progress($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get info => $_getSZ(2);
  @$pb.TagNumber(3)
  set info($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfo() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get done => $_getBF(3);
  @$pb.TagNumber(4)
  set done($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDone() => $_has(3);
  @$pb.TagNumber(4)
  void clearDone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get errorMessage => $_getSZ(4);
  @$pb.TagNumber(5)
  set errorMessage($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasErrorMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearErrorMessage() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get errorCode => $_getIZ(5);
  @$pb.TagNumber(6)
  set errorCode($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasErrorCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearErrorCode() => clearField(6);
}

///
/// type = 'upgrade-api-version'
/// origin = server
class UpgradeApiVersion extends $pb.GeneratedMessage {
  factory UpgradeApiVersion({
    $core.int? latest,
  }) {
    final $result = create();
    if (latest != null) {
      $result.latest = latest;
    }
    return $result;
  }
  UpgradeApiVersion._() : super();
  factory UpgradeApiVersion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpgradeApiVersion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpgradeApiVersion', package: const $pb.PackageName(_omitMessageNames ? '' : 'socket_api'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'latest', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpgradeApiVersion clone() => UpgradeApiVersion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpgradeApiVersion copyWith(void Function(UpgradeApiVersion) updates) => super.copyWith((message) => updates(message as UpgradeApiVersion)) as UpgradeApiVersion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpgradeApiVersion create() => UpgradeApiVersion._();
  UpgradeApiVersion createEmptyInstance() => create();
  static $pb.PbList<UpgradeApiVersion> createRepeated() => $pb.PbList<UpgradeApiVersion>();
  @$core.pragma('dart2js:noInline')
  static UpgradeApiVersion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpgradeApiVersion>(create);
  static UpgradeApiVersion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get latest => $_getIZ(0);
  @$pb.TagNumber(1)
  set latest($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatest() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatest() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
