///
//  Generated code. Do not modify.
//  source: form_errors.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FormErrors extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FormErrors', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'form_errors'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relatedMessageType', protoName: 'relatedMessageType')
    ..m<$core.String, SList>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errors', entryClassName: 'FormErrors.ErrorsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: SList.create, packageName: const $pb.PackageName('form_errors'))
    ..hasRequiredFields = false
  ;

  FormErrors._() : super();
  factory FormErrors({
    $core.String? relatedMessageType,
    $core.Map<$core.String, SList>? errors,
  }) {
    final _result = create();
    if (relatedMessageType != null) {
      _result.relatedMessageType = relatedMessageType;
    }
    if (errors != null) {
      _result.errors.addAll(errors);
    }
    return _result;
  }
  factory FormErrors.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FormErrors.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FormErrors clone() => FormErrors()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FormErrors copyWith(void Function(FormErrors) updates) => super.copyWith((message) => updates(message as FormErrors)) as FormErrors; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FormErrors create() => FormErrors._();
  FormErrors createEmptyInstance() => create();
  static $pb.PbList<FormErrors> createRepeated() => $pb.PbList<FormErrors>();
  @$core.pragma('dart2js:noInline')
  static FormErrors getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FormErrors>(create);
  static FormErrors? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get relatedMessageType => $_getSZ(0);
  @$pb.TagNumber(1)
  set relatedMessageType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRelatedMessageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRelatedMessageType() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, SList> get errors => $_getMap(1);
}

class SList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'form_errors'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list')
    ..hasRequiredFields = false
  ;

  SList._() : super();
  factory SList({
    $core.Iterable<$core.String>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }
  factory SList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SList clone() => SList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SList copyWith(void Function(SList) updates) => super.copyWith((message) => updates(message as SList)) as SList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SList create() => SList._();
  SList createEmptyInstance() => create();
  static $pb.PbList<SList> createRepeated() => $pb.PbList<SList>();
  @$core.pragma('dart2js:noInline')
  static SList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SList>(create);
  static SList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get list => $_getList(0);
}

