///
//  Generated code. Do not modify.
//  source: form_errors.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FormErrors extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FormErrors', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..aOS(1, 'relatedMessageType', protoName: 'relatedMessageType')
    ..m<$core.String, SList>(2, 'errors', entryClassName: 'FormErrors.ErrorsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: SList.create, packageName: const $pb.PackageName('authentication'))
    ..hasRequiredFields = false
  ;

  FormErrors._() : super();
  factory FormErrors() => create();
  factory FormErrors.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FormErrors.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FormErrors clone() => FormErrors()..mergeFromMessage(this);
  FormErrors copyWith(void Function(FormErrors) updates) => super.copyWith((message) => updates(message as FormErrors));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FormErrors create() => FormErrors._();
  FormErrors createEmptyInstance() => create();
  static $pb.PbList<FormErrors> createRepeated() => $pb.PbList<FormErrors>();
  @$core.pragma('dart2js:noInline')
  static FormErrors getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FormErrors>(create);
  static FormErrors _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SList', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..pPS(1, 'list')
    ..hasRequiredFields = false
  ;

  SList._() : super();
  factory SList() => create();
  factory SList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SList clone() => SList()..mergeFromMessage(this);
  SList copyWith(void Function(SList) updates) => super.copyWith((message) => updates(message as SList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SList create() => SList._();
  SList createEmptyInstance() => create();
  static $pb.PbList<SList> createRepeated() => $pb.PbList<SList>();
  @$core.pragma('dart2js:noInline')
  static SList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SList>(create);
  static SList _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get list => $_getList(0);
}

