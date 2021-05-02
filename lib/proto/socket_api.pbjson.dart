///
//  Generated code. Do not modify.
//  source: socket_api.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use ackDescriptor instead')
const Ack$json = const {
  '1': 'Ack',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'errorMessage', '3': 2, '4': 1, '5': 9, '10': 'errorMessage'},
  ],
};

/// Descriptor for `Ack`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackDescriptor = $convert.base64Decode('CgNBY2sSEgoEdXVpZBgBIAEoCVIEdXVpZBIiCgxlcnJvck1lc3NhZ2UYAiABKAlSDGVycm9yTWVzc2FnZQ==');
@$core.Deprecated('Use upgradeApiVersionDescriptor instead')
const UpgradeApiVersion$json = const {
  '1': 'UpgradeApiVersion',
  '2': const [
    const {'1': 'latest', '3': 1, '4': 1, '5': 5, '10': 'latest'},
  ],
};

/// Descriptor for `UpgradeApiVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradeApiVersionDescriptor = $convert.base64Decode('ChFVcGdyYWRlQXBpVmVyc2lvbhIWCgZsYXRlc3QYASABKAVSBmxhdGVzdA==');
