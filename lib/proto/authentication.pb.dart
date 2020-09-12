///
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RxLoginTokenData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RxLoginTokenData', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  RxLoginTokenData._() : super();
  factory RxLoginTokenData() => create();
  factory RxLoginTokenData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RxLoginTokenData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RxLoginTokenData clone() => RxLoginTokenData()..mergeFromMessage(this);
  RxLoginTokenData copyWith(void Function(RxLoginTokenData) updates) => super.copyWith((message) => updates(message as RxLoginTokenData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RxLoginTokenData create() => RxLoginTokenData._();
  RxLoginTokenData createEmptyInstance() => create();
  static $pb.PbList<RxLoginTokenData> createRepeated() => $pb.PbList<RxLoginTokenData>();
  @$core.pragma('dart2js:noInline')
  static RxLoginTokenData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RxLoginTokenData>(create);
  static RxLoginTokenData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class RxLoginErrorData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RxLoginErrorData', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..aOS(1, 'errorText', protoName: 'errorText')
    ..aOS(2, 'errorCode', protoName: 'errorCode')
    ..hasRequiredFields = false
  ;

  RxLoginErrorData._() : super();
  factory RxLoginErrorData() => create();
  factory RxLoginErrorData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RxLoginErrorData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RxLoginErrorData clone() => RxLoginErrorData()..mergeFromMessage(this);
  RxLoginErrorData copyWith(void Function(RxLoginErrorData) updates) => super.copyWith((message) => updates(message as RxLoginErrorData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RxLoginErrorData create() => RxLoginErrorData._();
  RxLoginErrorData createEmptyInstance() => create();
  static $pb.PbList<RxLoginErrorData> createRepeated() => $pb.PbList<RxLoginErrorData>();
  @$core.pragma('dart2js:noInline')
  static RxLoginErrorData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RxLoginErrorData>(create);
  static RxLoginErrorData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get errorText => $_getSZ(0);
  @$pb.TagNumber(1)
  set errorText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrorText() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorText() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorCode() => clearField(2);
}

class TxLoginData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxLoginData', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..aOS(1, 'username')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  TxLoginData._() : super();
  factory TxLoginData() => create();
  factory TxLoginData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxLoginData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxLoginData clone() => TxLoginData()..mergeFromMessage(this);
  TxLoginData copyWith(void Function(TxLoginData) updates) => super.copyWith((message) => updates(message as TxLoginData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxLoginData create() => TxLoginData._();
  TxLoginData createEmptyInstance() => create();
  static $pb.PbList<TxLoginData> createRepeated() => $pb.PbList<TxLoginData>();
  @$core.pragma('dart2js:noInline')
  static TxLoginData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxLoginData>(create);
  static TxLoginData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class TxVerifyTokenData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxVerifyTokenData', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  TxVerifyTokenData._() : super();
  factory TxVerifyTokenData() => create();
  factory TxVerifyTokenData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxVerifyTokenData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxVerifyTokenData clone() => TxVerifyTokenData()..mergeFromMessage(this);
  TxVerifyTokenData copyWith(void Function(TxVerifyTokenData) updates) => super.copyWith((message) => updates(message as TxVerifyTokenData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxVerifyTokenData create() => TxVerifyTokenData._();
  TxVerifyTokenData createEmptyInstance() => create();
  static $pb.PbList<TxVerifyTokenData> createRepeated() => $pb.PbList<TxVerifyTokenData>();
  @$core.pragma('dart2js:noInline')
  static TxVerifyTokenData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxVerifyTokenData>(create);
  static TxVerifyTokenData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

