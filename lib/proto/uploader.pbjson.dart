///
//  Generated code. Do not modify.
//  source: uploader.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use uploadStatusDescriptor instead')
const UploadStatus$json = const {
  '1': 'UploadStatus',
  '2': const [
    const {'1': 'scheduled', '2': 0},
    const {'1': 'uploading', '2': 1},
    const {'1': 'paused', '2': 3},
    const {'1': 'done', '2': 4},
    const {'1': 'error', '2': 5},
  ],
};

/// Descriptor for `UploadStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List uploadStatusDescriptor = $convert.base64Decode('CgxVcGxvYWRTdGF0dXMSDQoJc2NoZWR1bGVkEAASDQoJdXBsb2FkaW5nEAESCgoGcGF1c2VkEAMSCAoEZG9uZRAEEgkKBWVycm9yEAU=');
@$core.Deprecated('Use uploadTaskDescriptor instead')
const UploadTask$json = const {
  '1': 'UploadTask',
  '2': const [
    const {'1': 'created', '3': 1, '4': 1, '5': 4, '10': 'created'},
    const {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'mime', '3': 4, '4': 1, '5': 9, '10': 'mime'},
    const {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.uploader.UploadStatus', '10': 'status'},
    const {'1': 'retryCounter', '3': 6, '4': 1, '5': 5, '10': 'retryCounter'},
    const {'1': 'error', '3': 7, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'fingerprint', '3': 8, '4': 1, '5': 9, '10': 'fingerprint'},
    const {'1': 'url', '3': 9, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `UploadTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadTaskDescriptor = $convert.base64Decode('CgpVcGxvYWRUYXNrEhgKB2NyZWF0ZWQYASABKARSB2NyZWF0ZWQSEgoEcGF0aBgCIAEoCVIEcGF0aBISCgRuYW1lGAMgASgJUgRuYW1lEhIKBG1pbWUYBCABKAlSBG1pbWUSLgoGc3RhdHVzGAUgASgOMhYudXBsb2FkZXIuVXBsb2FkU3RhdHVzUgZzdGF0dXMSIgoMcmV0cnlDb3VudGVyGAYgASgFUgxyZXRyeUNvdW50ZXISFAoFZXJyb3IYByABKAlSBWVycm9yEiAKC2ZpbmdlcnByaW50GAggASgJUgtmaW5nZXJwcmludBIQCgN1cmwYCSABKAlSA3VybA==');
