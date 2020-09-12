///
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LoginToken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginToken', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  LoginToken._() : super();
  factory LoginToken() => create();
  factory LoginToken.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginToken.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginToken clone() => LoginToken()..mergeFromMessage(this);
  LoginToken copyWith(void Function(LoginToken) updates) => super.copyWith((message) => updates(message as LoginToken));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginToken create() => LoginToken._();
  LoginToken createEmptyInstance() => create();
  static $pb.PbList<LoginToken> createRepeated() => $pb.PbList<LoginToken>();
  @$core.pragma('dart2js:noInline')
  static LoginToken getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginToken>(create);
  static LoginToken _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class LoginError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginError', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..aOS(1, 'errorText', protoName: 'errorText')
    ..aOS(2, 'errorCode', protoName: 'errorCode')
    ..hasRequiredFields = false
  ;

  LoginError._() : super();
  factory LoginError() => create();
  factory LoginError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginError clone() => LoginError()..mergeFromMessage(this);
  LoginError copyWith(void Function(LoginError) updates) => super.copyWith((message) => updates(message as LoginError));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginError create() => LoginError._();
  LoginError createEmptyInstance() => create();
  static $pb.PbList<LoginError> createRepeated() => $pb.PbList<LoginError>();
  @$core.pragma('dart2js:noInline')
  static LoginError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginError>(create);
  static LoginError _defaultInstance;

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

class Login extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Login', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..aOS(1, 'username')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  Login._() : super();
  factory Login() => create();
  factory Login.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Login.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Login clone() => Login()..mergeFromMessage(this);
  Login copyWith(void Function(Login) updates) => super.copyWith((message) => updates(message as Login));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Login create() => Login._();
  Login createEmptyInstance() => create();
  static $pb.PbList<Login> createRepeated() => $pb.PbList<Login>();
  @$core.pragma('dart2js:noInline')
  static Login getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Login>(create);
  static Login _defaultInstance;

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

class VerifyToken extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyToken', package: const $pb.PackageName('authentication'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  VerifyToken._() : super();
  factory VerifyToken() => create();
  factory VerifyToken.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyToken.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  VerifyToken clone() => VerifyToken()..mergeFromMessage(this);
  VerifyToken copyWith(void Function(VerifyToken) updates) => super.copyWith((message) => updates(message as VerifyToken));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyToken create() => VerifyToken._();
  VerifyToken createEmptyInstance() => create();
  static $pb.PbList<VerifyToken> createRepeated() => $pb.PbList<VerifyToken>();
  @$core.pragma('dart2js:noInline')
  static VerifyToken getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyToken>(create);
  static VerifyToken _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

