//
//  Generated code. Do not modify.
//  source: socket_api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use ackErrorCodeDescriptor instead')
const AckErrorCode$json = {
  '1': 'AckErrorCode',
  '2': [
    {'1': 'error_code_none', '2': 0},
    {'1': 'error_code_unauthorized', '2': 401},
  ],
};

/// Descriptor for `AckErrorCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ackErrorCodeDescriptor = $convert.base64Decode(
    'CgxBY2tFcnJvckNvZGUSEwoPZXJyb3JfY29kZV9ub25lEAASHAoXZXJyb3JfY29kZV91bmF1dG'
    'hvcml6ZWQQkQM=');

@$core.Deprecated('Use ackDescriptor instead')
const Ack$json = {
  '1': 'Ack',
  '2': [
    {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
    {'1': 'error_code', '3': 4, '4': 1, '5': 5, '10': 'errorCode'},
  ],
};

/// Descriptor for `Ack`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackDescriptor = $convert.base64Decode(
    'CgNBY2sSEgoEdXVpZBgBIAEoCVIEdXVpZBIjCg1lcnJvcl9tZXNzYWdlGAIgASgJUgxlcnJvck'
    '1lc3NhZ2USHQoKZXJyb3JfY29kZRgEIAEoBVIJZXJyb3JDb2Rl');

@$core.Deprecated('Use asyncProgressDescriptor instead')
const AsyncProgress$json = {
  '1': 'AsyncProgress',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'progress', '3': 2, '4': 1, '5': 1, '10': 'progress'},
    {'1': 'info', '3': 3, '4': 1, '5': 9, '10': 'info'},
    {'1': 'done', '3': 4, '4': 1, '5': 8, '10': 'done'},
    {'1': 'error_message', '3': 5, '4': 1, '5': 9, '10': 'errorMessage'},
    {'1': 'error_code', '3': 6, '4': 1, '5': 5, '10': 'errorCode'},
  ],
};

/// Descriptor for `AsyncProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List asyncProgressDescriptor = $convert.base64Decode(
    'Cg1Bc3luY1Byb2dyZXNzEhAKA2tleRgBIAEoCVIDa2V5EhoKCHByb2dyZXNzGAIgASgBUghwcm'
    '9ncmVzcxISCgRpbmZvGAMgASgJUgRpbmZvEhIKBGRvbmUYBCABKAhSBGRvbmUSIwoNZXJyb3Jf'
    'bWVzc2FnZRgFIAEoCVIMZXJyb3JNZXNzYWdlEh0KCmVycm9yX2NvZGUYBiABKAVSCWVycm9yQ2'
    '9kZQ==');

@$core.Deprecated('Use upgradeApiVersionDescriptor instead')
const UpgradeApiVersion$json = {
  '1': 'UpgradeApiVersion',
  '2': [
    {'1': 'latest', '3': 1, '4': 1, '5': 5, '10': 'latest'},
  ],
};

/// Descriptor for `UpgradeApiVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradeApiVersionDescriptor = $convert.base64Decode(
    'ChFVcGdyYWRlQXBpVmVyc2lvbhIWCgZsYXRlc3QYASABKAVSBmxhdGVzdA==');

