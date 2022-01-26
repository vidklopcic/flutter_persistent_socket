///
//  Generated code. Do not modify.
//  source: socket_api.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use ackDescriptor instead')
const Ack$json = const {
  '1': 'Ack',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'error_message', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
    const {'1': 'async_progress_key', '3': 3, '4': 1, '5': 9, '10': 'asyncProgressKey'},
    const {'1': 'error_code', '3': 4, '4': 1, '5': 5, '10': 'errorCode'},
  ],
};

/// Descriptor for `Ack`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackDescriptor = $convert.base64Decode('CgNBY2sSEgoEdXVpZBgBIAEoCVIEdXVpZBIjCg1lcnJvcl9tZXNzYWdlGAIgASgJUgxlcnJvck1lc3NhZ2USLAoSYXN5bmNfcHJvZ3Jlc3Nfa2V5GAMgASgJUhBhc3luY1Byb2dyZXNzS2V5Eh0KCmVycm9yX2NvZGUYBCABKAVSCWVycm9yQ29kZQ==');
@$core.Deprecated('Use asyncProgressDescriptor instead')
const AsyncProgress$json = const {
  '1': 'AsyncProgress',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'progress', '3': 2, '4': 1, '5': 1, '10': 'progress'},
    const {'1': 'info', '3': 3, '4': 1, '5': 9, '10': 'info'},
    const {'1': 'done', '3': 4, '4': 1, '5': 8, '10': 'done'},
    const {'1': 'error_message', '3': 5, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
};

/// Descriptor for `AsyncProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List asyncProgressDescriptor = $convert.base64Decode('Cg1Bc3luY1Byb2dyZXNzEhAKA2tleRgBIAEoCVIDa2V5EhoKCHByb2dyZXNzGAIgASgBUghwcm9ncmVzcxISCgRpbmZvGAMgASgJUgRpbmZvEhIKBGRvbmUYBCABKAhSBGRvbmUSIwoNZXJyb3JfbWVzc2FnZRgFIAEoCVIMZXJyb3JNZXNzYWdl');
@$core.Deprecated('Use upgradeApiVersionDescriptor instead')
const UpgradeApiVersion$json = const {
  '1': 'UpgradeApiVersion',
  '2': const [
    const {'1': 'latest', '3': 1, '4': 1, '5': 5, '10': 'latest'},
  ],
};

/// Descriptor for `UpgradeApiVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradeApiVersionDescriptor = $convert.base64Decode('ChFVcGdyYWRlQXBpVmVyc2lvbhIWCgZsYXRlc3QYASABKAVSBmxhdGVzdA==');
