// This is a generated file - do not edit.
//
// Generated from uploader.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use uploadStatusDescriptor instead')
const UploadStatus$json = {
  '1': 'UploadStatus',
  '2': [
    {'1': 'scheduled', '2': 0},
    {'1': 'uploading', '2': 1},
    {'1': 'paused', '2': 3},
    {'1': 'done', '2': 4},
    {'1': 'error', '2': 5},
    {'1': 'restored', '2': 6},
  ],
};

/// Descriptor for `UploadStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List uploadStatusDescriptor = $convert.base64Decode(
    'CgxVcGxvYWRTdGF0dXMSDQoJc2NoZWR1bGVkEAASDQoJdXBsb2FkaW5nEAESCgoGcGF1c2VkEA'
    'MSCAoEZG9uZRAEEgkKBWVycm9yEAUSDAoIcmVzdG9yZWQQBg==');

@$core.Deprecated('Use uploadTaskDescriptor instead')
const UploadTask$json = {
  '1': 'UploadTask',
  '2': [
    {'1': 'created', '3': 1, '4': 1, '5': 4, '10': 'created'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'mime', '3': 4, '4': 1, '5': 9, '10': 'mime'},
    {
      '1': 'status',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.uploader.UploadStatus',
      '10': 'status'
    },
    {'1': 'retry_counter', '3': 6, '4': 1, '5': 5, '10': 'retryCounter'},
    {'1': 'error', '3': 7, '4': 1, '5': 9, '10': 'error'},
    {'1': 'fingerprint', '3': 8, '4': 1, '5': 9, '10': 'fingerprint'},
    {'1': 'url', '3': 9, '4': 1, '5': 9, '10': 'url'},
    {
      '1': 'metadata',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.uploader.UploadTask.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': [UploadTask_MetadataEntry$json],
};

@$core.Deprecated('Use uploadTaskDescriptor instead')
const UploadTask_MetadataEntry$json = {
  '1': 'MetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `UploadTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadTaskDescriptor = $convert.base64Decode(
    'CgpVcGxvYWRUYXNrEhgKB2NyZWF0ZWQYASABKARSB2NyZWF0ZWQSEgoEcGF0aBgCIAEoCVIEcG'
    'F0aBISCgRuYW1lGAMgASgJUgRuYW1lEhIKBG1pbWUYBCABKAlSBG1pbWUSLgoGc3RhdHVzGAUg'
    'ASgOMhYudXBsb2FkZXIuVXBsb2FkU3RhdHVzUgZzdGF0dXMSIwoNcmV0cnlfY291bnRlchgGIA'
    'EoBVIMcmV0cnlDb3VudGVyEhQKBWVycm9yGAcgASgJUgVlcnJvchIgCgtmaW5nZXJwcmludBgI'
    'IAEoCVILZmluZ2VycHJpbnQSEAoDdXJsGAkgASgJUgN1cmwSPgoIbWV0YWRhdGEYCiADKAsyIi'
    '51cGxvYWRlci5VcGxvYWRUYXNrLk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRh'
    'RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use uploadUFileDescriptor instead')
const UploadUFile$json = {
  '1': 'UploadUFile',
  '2': [
    {'1': 'file_id', '3': 1, '4': 1, '5': 9, '10': 'fileId'},
    {
      '1': 'task',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.uploader.UploadTask',
      '10': 'task'
    },
  ],
};

/// Descriptor for `UploadUFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadUFileDescriptor = $convert.base64Decode(
    'CgtVcGxvYWRVRmlsZRIXCgdmaWxlX2lkGAEgASgJUgZmaWxlSWQSKAoEdGFzaxgCIAEoCzIULn'
    'VwbG9hZGVyLlVwbG9hZFRhc2tSBHRhc2s=');

@$core.Deprecated('Use deleteUFileDescriptor instead')
const DeleteUFile$json = {
  '1': 'DeleteUFile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteUFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUFileDescriptor =
    $convert.base64Decode('CgtEZWxldGVVRmlsZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use uploadSlotDescriptor instead')
const UploadSlot$json = {
  '1': 'UploadSlot',
  '2': [
    {
      '1': 'file',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.uploader.UFile',
      '10': 'file'
    },
    {
      '1': 'metadata',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.uploader.UploadSlot.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': [UploadSlot_MetadataEntry$json],
};

@$core.Deprecated('Use uploadSlotDescriptor instead')
const UploadSlot_MetadataEntry$json = {
  '1': 'MetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `UploadSlot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadSlotDescriptor = $convert.base64Decode(
    'CgpVcGxvYWRTbG90EiMKBGZpbGUYASABKAsyDy51cGxvYWRlci5VRmlsZVIEZmlsZRI+CghtZX'
    'RhZGF0YRgCIAMoCzIiLnVwbG9hZGVyLlVwbG9hZFNsb3QuTWV0YWRhdGFFbnRyeVIIbWV0YWRh'
    'dGEaOwoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdm'
    'FsdWU6AjgB');

@$core.Deprecated('Use uFileDescriptor instead')
const UFile$json = {
  '1': 'UFile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'src', '3': 2, '4': 1, '5': 9, '10': 'src'},
    {'1': 'preview', '3': 3, '4': 1, '5': 9, '10': 'preview'},
    {'1': 'previewLarge', '3': 4, '4': 1, '5': 9, '10': 'previewLarge'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'upload_task', '3': 6, '4': 1, '5': 9, '10': 'uploadTask'},
    {'1': 'local_path', '3': 7, '4': 1, '5': 9, '10': 'localPath'},
  ],
};

/// Descriptor for `UFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uFileDescriptor = $convert.base64Decode(
    'CgVVRmlsZRIOCgJpZBgBIAEoCVICaWQSEAoDc3JjGAIgASgJUgNzcmMSGAoHcHJldmlldxgDIA'
    'EoCVIHcHJldmlldxIiCgxwcmV2aWV3TGFyZ2UYBCABKAlSDHByZXZpZXdMYXJnZRISCgRuYW1l'
    'GAUgASgJUgRuYW1lEh8KC3VwbG9hZF90YXNrGAYgASgJUgp1cGxvYWRUYXNrEh0KCmxvY2FsX3'
    'BhdGgYByABKAlSCWxvY2FsUGF0aA==');
