//
//  Generated code. Do not modify.
//  source: sfiles.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use uploadStartSlotDescriptor instead')
const UploadStartSlot$json = {
  '1': 'UploadStartSlot',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'local_key', '3': 2, '4': 1, '5': 9, '10': 'localKey'},
  ],
};

/// Descriptor for `UploadStartSlot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadStartSlotDescriptor = $convert.base64Decode(
    'Cg9VcGxvYWRTdGFydFNsb3QSEAoDa2V5GAEgASgJUgNrZXkSGwoJbG9jYWxfa2V5GAIgASgJUg'
    'hsb2NhbEtleQ==');

@$core.Deprecated('Use uploadProgressDescriptor instead')
const UploadProgress$json = {
  '1': 'UploadProgress',
  '2': [
    {'1': 'n_bytes', '3': 1, '4': 1, '5': 3, '10': 'nBytes'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'local_key', '3': 3, '4': 1, '5': 9, '10': 'localKey'},
  ],
};

/// Descriptor for `UploadProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadProgressDescriptor = $convert.base64Decode(
    'Cg5VcGxvYWRQcm9ncmVzcxIXCgduX2J5dGVzGAEgASgDUgZuQnl0ZXMSEAoDa2V5GAIgASgJUg'
    'NrZXkSGwoJbG9jYWxfa2V5GAMgASgJUghsb2NhbEtleQ==');

@$core.Deprecated('Use uploadDoneDescriptor instead')
const UploadDone$json = {
  '1': 'UploadDone',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'file', '3': 2, '4': 1, '5': 11, '6': '.sfiles.UploadedFile', '10': 'file'},
  ],
};

/// Descriptor for `UploadDone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadDoneDescriptor = $convert.base64Decode(
    'CgpVcGxvYWREb25lEhAKA2tleRgBIAEoCVIDa2V5EigKBGZpbGUYAiABKAsyFC5zZmlsZXMuVX'
    'Bsb2FkZWRGaWxlUgRmaWxl');

@$core.Deprecated('Use uploadedFileDescriptor instead')
const UploadedFile$json = {
  '1': 'UploadedFile',
  '2': [
    {'1': 'local_key', '3': 1, '4': 1, '5': 9, '10': 'localKey'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    {'1': 'id', '3': 3, '4': 1, '5': 9, '10': 'id'},
    {'1': 'mime', '3': 4, '4': 1, '5': 9, '10': 'mime'},
    {'1': 'thumb_url', '3': 5, '4': 1, '5': 9, '10': 'thumbUrl'},
    {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UploadedFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadedFileDescriptor = $convert.base64Decode(
    'CgxVcGxvYWRlZEZpbGUSGwoJbG9jYWxfa2V5GAEgASgJUghsb2NhbEtleRIQCgN1cmwYAiABKA'
    'lSA3VybBIOCgJpZBgDIAEoCVICaWQSEgoEbWltZRgEIAEoCVIEbWltZRIbCgl0aHVtYl91cmwY'
    'BSABKAlSCHRodW1iVXJsEhIKBG5hbWUYBiABKAlSBG5hbWU=');

@$core.Deprecated('Use uploadStartDescriptor instead')
const UploadStart$json = {
  '1': 'UploadStart',
  '2': [
    {'1': 'local_key', '3': 1, '4': 1, '5': 9, '10': 'localKey'},
    {'1': 'extension', '3': 2, '4': 1, '5': 9, '10': 'extension'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'mime', '3': 4, '4': 1, '5': 9, '10': 'mime'},
  ],
};

/// Descriptor for `UploadStart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadStartDescriptor = $convert.base64Decode(
    'CgtVcGxvYWRTdGFydBIbCglsb2NhbF9rZXkYASABKAlSCGxvY2FsS2V5EhwKCWV4dGVuc2lvbh'
    'gCIAEoCVIJZXh0ZW5zaW9uEhIKBG5hbWUYAyABKAlSBG5hbWUSEgoEbWltZRgEIAEoCVIEbWlt'
    'ZQ==');

@$core.Deprecated('Use deleteFileDescriptor instead')
const DeleteFile$json = {
  '1': 'DeleteFile',
  '2': [
    {'1': 'file', '3': 1, '4': 1, '5': 11, '6': '.sfiles.UploadedFile', '10': 'file'},
  ],
};

/// Descriptor for `DeleteFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileDescriptor = $convert.base64Decode(
    'CgpEZWxldGVGaWxlEigKBGZpbGUYASABKAsyFC5zZmlsZXMuVXBsb2FkZWRGaWxlUgRmaWxl');

@$core.Deprecated('Use uploadEndDescriptor instead')
const UploadEnd$json = {
  '1': 'UploadEnd',
};

/// Descriptor for `UploadEnd`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadEndDescriptor = $convert.base64Decode(
    'CglVcGxvYWRFbmQ=');

