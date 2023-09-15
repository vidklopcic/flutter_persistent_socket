//
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use loginTokenDescriptor instead')
const LoginToken$json = {
  '1': 'LoginToken',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'refresh', '3': 2, '4': 1, '5': 9, '10': 'refresh'},
  ],
};

/// Descriptor for `LoginToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginTokenDescriptor = $convert.base64Decode(
    'CgpMb2dpblRva2VuEhQKBXRva2VuGAEgASgJUgV0b2tlbhIYCgdyZWZyZXNoGAIgASgJUgdyZW'
    'ZyZXNo');

@$core.Deprecated('Use loginErrorDescriptor instead')
const LoginError$json = {
  '1': 'LoginError',
  '2': [
    {'1': 'errorText', '3': 1, '4': 1, '5': 9, '10': 'errorText'},
    {'1': 'errorCode', '3': 2, '4': 1, '5': 9, '10': 'errorCode'},
  ],
};

/// Descriptor for `LoginError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginErrorDescriptor = $convert.base64Decode(
    'CgpMb2dpbkVycm9yEhwKCWVycm9yVGV4dBgBIAEoCVIJZXJyb3JUZXh0EhwKCWVycm9yQ29kZR'
    'gCIAEoCVIJZXJyb3JDb2Rl');

@$core.Deprecated('Use loginDescriptor instead')
const Login$json = {
  '1': 'Login',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `Login`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginDescriptor = $convert.base64Decode(
    'CgVMb2dpbhIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSGgoIcGFzc3dvcmQYAiABKAlSCH'
    'Bhc3N3b3Jk');

@$core.Deprecated('Use refreshTokenDescriptor instead')
const RefreshToken$json = {
  '1': 'RefreshToken',
  '2': [
    {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenDescriptor = $convert.base64Decode(
    'CgxSZWZyZXNoVG9rZW4SIwoNcmVmcmVzaF90b2tlbhgBIAEoCVIMcmVmcmVzaFRva2Vu');

@$core.Deprecated('Use verifyTokenDescriptor instead')
const VerifyToken$json = {
  '1': 'VerifyToken',
};

/// Descriptor for `VerifyToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyTokenDescriptor = $convert.base64Decode(
    'CgtWZXJpZnlUb2tlbg==');

@$core.Deprecated('Use tokenInvalidDescriptor instead')
const TokenInvalid$json = {
  '1': 'TokenInvalid',
};

/// Descriptor for `TokenInvalid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenInvalidDescriptor = $convert.base64Decode(
    'CgxUb2tlbkludmFsaWQ=');

@$core.Deprecated('Use refreshTokenInvalidDescriptor instead')
const RefreshTokenInvalid$json = {
  '1': 'RefreshTokenInvalid',
};

/// Descriptor for `RefreshTokenInvalid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenInvalidDescriptor = $convert.base64Decode(
    'ChNSZWZyZXNoVG9rZW5JbnZhbGlk');

