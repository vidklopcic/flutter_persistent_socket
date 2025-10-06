// This is a generated file - do not edit.
//
// Generated from authentication.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

///
/// type = 'login-token'
/// origin = server
/// client cache = years(1)
class LoginToken extends $pb.GeneratedMessage {
  factory LoginToken({
    $core.String? token,
    $core.String? refresh,
  }) {
    final result = create();
    if (token != null) result.token = token;
    if (refresh != null) result.refresh = refresh;
    return result;
  }

  LoginToken._();

  factory LoginToken.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LoginToken.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoginToken',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authentication'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOS(2, _omitFieldNames ? '' : 'refresh')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginToken clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginToken copyWith(void Function(LoginToken) updates) =>
      super.copyWith((message) => updates(message as LoginToken)) as LoginToken;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginToken create() => LoginToken._();
  @$core.override
  LoginToken createEmptyInstance() => create();
  static $pb.PbList<LoginToken> createRepeated() => $pb.PbList<LoginToken>();
  @$core.pragma('dart2js:noInline')
  static LoginToken getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginToken>(create);
  static LoginToken? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get refresh => $_getSZ(1);
  @$pb.TagNumber(2)
  set refresh($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRefresh() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefresh() => $_clearField(2);
}

///
/// type = 'login-error'
/// origin = server
class LoginError extends $pb.GeneratedMessage {
  factory LoginError({
    $core.String? errorText,
    $core.String? errorCode,
  }) {
    final result = create();
    if (errorText != null) result.errorText = errorText;
    if (errorCode != null) result.errorCode = errorCode;
    return result;
  }

  LoginError._();

  factory LoginError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LoginError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LoginError',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authentication'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'errorText', protoName: 'errorText')
    ..aOS(2, _omitFieldNames ? '' : 'errorCode', protoName: 'errorCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginError copyWith(void Function(LoginError) updates) =>
      super.copyWith((message) => updates(message as LoginError)) as LoginError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginError create() => LoginError._();
  @$core.override
  LoginError createEmptyInstance() => create();
  static $pb.PbList<LoginError> createRepeated() => $pb.PbList<LoginError>();
  @$core.pragma('dart2js:noInline')
  static LoginError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginError>(create);
  static LoginError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get errorText => $_getSZ(0);
  @$pb.TagNumber(1)
  set errorText($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasErrorText() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get errorCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set errorCode($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasErrorCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorCode() => $_clearField(2);
}

///
/// type = 'login'
/// origin = client
/// auth = false
class Login extends $pb.GeneratedMessage {
  factory Login({
    $core.String? username,
    $core.String? password,
  }) {
    final result = create();
    if (username != null) result.username = username;
    if (password != null) result.password = password;
    return result;
  }

  Login._();

  factory Login.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Login.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Login',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authentication'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login copyWith(void Function(Login) updates) =>
      super.copyWith((message) => updates(message as Login)) as Login;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Login create() => Login._();
  @$core.override
  Login createEmptyInstance() => create();
  static $pb.PbList<Login> createRepeated() => $pb.PbList<Login>();
  @$core.pragma('dart2js:noInline')
  static Login getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Login>(create);
  static Login? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);
}

///
/// type = 'refresh-token'
/// origin = client
class RefreshToken extends $pb.GeneratedMessage {
  factory RefreshToken({
    $core.String? refreshToken,
  }) {
    final result = create();
    if (refreshToken != null) result.refreshToken = refreshToken;
    return result;
  }

  RefreshToken._();

  factory RefreshToken.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RefreshToken.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RefreshToken',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authentication'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'refreshToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshToken clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshToken copyWith(void Function(RefreshToken) updates) =>
      super.copyWith((message) => updates(message as RefreshToken))
          as RefreshToken;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshToken create() => RefreshToken._();
  @$core.override
  RefreshToken createEmptyInstance() => create();
  static $pb.PbList<RefreshToken> createRepeated() =>
      $pb.PbList<RefreshToken>();
  @$core.pragma('dart2js:noInline')
  static RefreshToken getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RefreshToken>(create);
  static RefreshToken? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get refreshToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set refreshToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRefreshToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefreshToken() => $_clearField(1);
}

///
/// type = 'verify-token'
/// origin = client
class VerifyToken extends $pb.GeneratedMessage {
  factory VerifyToken() => create();

  VerifyToken._();

  factory VerifyToken.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VerifyToken.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerifyToken',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authentication'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyToken clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyToken copyWith(void Function(VerifyToken) updates) =>
      super.copyWith((message) => updates(message as VerifyToken))
          as VerifyToken;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyToken create() => VerifyToken._();
  @$core.override
  VerifyToken createEmptyInstance() => create();
  static $pb.PbList<VerifyToken> createRepeated() => $pb.PbList<VerifyToken>();
  @$core.pragma('dart2js:noInline')
  static VerifyToken getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerifyToken>(create);
  static VerifyToken? _defaultInstance;
}

///
/// type = 'token-invalid'
/// origin = server
class TokenInvalid extends $pb.GeneratedMessage {
  factory TokenInvalid() => create();

  TokenInvalid._();

  factory TokenInvalid.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenInvalid.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenInvalid',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authentication'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenInvalid clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenInvalid copyWith(void Function(TokenInvalid) updates) =>
      super.copyWith((message) => updates(message as TokenInvalid))
          as TokenInvalid;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenInvalid create() => TokenInvalid._();
  @$core.override
  TokenInvalid createEmptyInstance() => create();
  static $pb.PbList<TokenInvalid> createRepeated() =>
      $pb.PbList<TokenInvalid>();
  @$core.pragma('dart2js:noInline')
  static TokenInvalid getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenInvalid>(create);
  static TokenInvalid? _defaultInstance;
}

///
/// type = 'refresh-token-invalid'
/// origin = server
class RefreshTokenInvalid extends $pb.GeneratedMessage {
  factory RefreshTokenInvalid() => create();

  RefreshTokenInvalid._();

  factory RefreshTokenInvalid.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RefreshTokenInvalid.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RefreshTokenInvalid',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'authentication'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshTokenInvalid clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshTokenInvalid copyWith(void Function(RefreshTokenInvalid) updates) =>
      super.copyWith((message) => updates(message as RefreshTokenInvalid))
          as RefreshTokenInvalid;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshTokenInvalid create() => RefreshTokenInvalid._();
  @$core.override
  RefreshTokenInvalid createEmptyInstance() => create();
  static $pb.PbList<RefreshTokenInvalid> createRepeated() =>
      $pb.PbList<RefreshTokenInvalid>();
  @$core.pragma('dart2js:noInline')
  static RefreshTokenInvalid getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RefreshTokenInvalid>(create);
  static RefreshTokenInvalid? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
