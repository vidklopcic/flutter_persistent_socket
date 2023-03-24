///
//  Generated code. Do not modify.
//  source: authentication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loginTokenDescriptor instead')
const LoginToken$json = const {
  '1': 'LoginToken',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'refresh', '3': 2, '4': 1, '5': 9, '10': 'refresh'},
  ],
};

/// Descriptor for `LoginToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginTokenDescriptor = $convert.base64Decode('CgpMb2dpblRva2VuEhQKBXRva2VuGAEgASgJUgV0b2tlbhIYCgdyZWZyZXNoGAIgASgJUgdyZWZyZXNo');
@$core.Deprecated('Use loginErrorDescriptor instead')
const LoginError$json = const {
  '1': 'LoginError',
  '2': const [
    const {'1': 'errorText', '3': 1, '4': 1, '5': 9, '10': 'errorText'},
    const {'1': 'errorCode', '3': 2, '4': 1, '5': 9, '10': 'errorCode'},
  ],
};

/// Descriptor for `LoginError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginErrorDescriptor = $convert.base64Decode('CgpMb2dpbkVycm9yEhwKCWVycm9yVGV4dBgBIAEoCVIJZXJyb3JUZXh0EhwKCWVycm9yQ29kZRgCIAEoCVIJZXJyb3JDb2Rl');
@$core.Deprecated('Use loginDescriptor instead')
const Login$json = const {
  '1': 'Login',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `Login`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginDescriptor = $convert.base64Decode('CgVMb2dpbhIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use refreshTokenDescriptor instead')
const RefreshToken$json = const {
  '1': 'RefreshToken',
  '2': const [
    const {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenDescriptor = $convert.base64Decode('CgxSZWZyZXNoVG9rZW4SIwoNcmVmcmVzaF90b2tlbhgBIAEoCVIMcmVmcmVzaFRva2Vu');
@$core.Deprecated('Use verifyTokenDescriptor instead')
const VerifyToken$json = const {
  '1': 'VerifyToken',
};

/// Descriptor for `VerifyToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyTokenDescriptor = $convert.base64Decode('CgtWZXJpZnlUb2tlbg==');
@$core.Deprecated('Use tokenInvalidDescriptor instead')
const TokenInvalid$json = const {
  '1': 'TokenInvalid',
};

/// Descriptor for `TokenInvalid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenInvalidDescriptor = $convert.base64Decode('CgxUb2tlbkludmFsaWQ=');
