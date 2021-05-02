///
//  Generated code. Do not modify.
//  source: uploader.proto
//
// @dart = 2.7
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
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'retryCounter', $pb.PbFieldType.O3, protoName: 'retryCounter')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  UploadTask._() : super();
  factory UploadTask({
    $fixnum.Int64 created,
    $core.String path,
    $core.String name,
    $core.String mime,
    UploadStatus status,
    $core.int retryCounter,
    $core.String error,
    $core.String fingerprint,
    $core.String url,
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
  static UploadTask _defaultInstance;

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
}

