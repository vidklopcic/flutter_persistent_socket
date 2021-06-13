///
//  Generated code. Do not modify.
//  source: sfiles.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use uploadStartSlotDescriptor instead')
const UploadStartSlot$json = const {
  '1': 'UploadStartSlot',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'local_key', '3': 2, '4': 1, '5': 9, '10': 'localKey'},
  ],
};

/// Descriptor for `UploadStartSlot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadStartSlotDescriptor = $convert.base64Decode('Cg9VcGxvYWRTdGFydFNsb3QSEAoDa2V5GAEgASgJUgNrZXkSGwoJbG9jYWxfa2V5GAIgASgJUghsb2NhbEtleQ==');
@$core.Deprecated('Use uploadProgressDescriptor instead')
const UploadProgress$json = const {
  '1': 'UploadProgress',
  '2': const [
    const {'1': 'n_bytes', '3': 1, '4': 1, '5': 3, '10': 'nBytes'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'local_key', '3': 3, '4': 1, '5': 9, '10': 'localKey'},
  ],
};

/// Descriptor for `UploadProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadProgressDescriptor = $convert.base64Decode('Cg5VcGxvYWRQcm9ncmVzcxIXCgduX2J5dGVzGAEgASgDUgZuQnl0ZXMSEAoDa2V5GAIgASgJUgNrZXkSGwoJbG9jYWxfa2V5GAMgASgJUghsb2NhbEtleQ==');
@$core.Deprecated('Use uploadDoneDescriptor instead')
const UploadDone$json = const {
  '1': 'UploadDone',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'file', '3': 2, '4': 1, '5': 11, '6': '.sfiles.UploadedFile', '10': 'file'},
  ],
};

/// Descriptor for `UploadDone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadDoneDescriptor = $convert.base64Decode('CgpVcGxvYWREb25lEhAKA2tleRgBIAEoCVIDa2V5EigKBGZpbGUYAiABKAsyFC5zZmlsZXMuVXBsb2FkZWRGaWxlUgRmaWxl');
@$core.Deprecated('Use uploadedFileDescriptor instead')
const UploadedFile$json = const {
  '1': 'UploadedFile',
  '2': const [
    const {'1': 'local_key', '3': 1, '4': 1, '5': 9, '10': 'localKey'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'id', '3': 3, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'mime', '3': 4, '4': 1, '5': 9, '10': 'mime'},
    const {'1': 'thumb_url', '3': 5, '4': 1, '5': 9, '10': 'thumbUrl'},
    const {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'downloadable', '3': 7, '4': 1, '5': 8, '10': 'downloadable'},
  ],
};

/// Descriptor for `UploadedFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadedFileDescriptor = $convert.base64Decode('CgxVcGxvYWRlZEZpbGUSGwoJbG9jYWxfa2V5GAEgASgJUghsb2NhbEtleRIQCgN1cmwYAiABKAlSA3VybBIOCgJpZBgDIAEoCVICaWQSEgoEbWltZRgEIAEoCVIEbWltZRIbCgl0aHVtYl91cmwYBSABKAlSCHRodW1iVXJsEhIKBG5hbWUYBiABKAlSBG5hbWUSIgoMZG93bmxvYWRhYmxlGAcgASgIUgxkb3dubG9hZGFibGU=');
@$core.Deprecated('Use uploadStartDescriptor instead')
const UploadStart$json = const {
  '1': 'UploadStart',
  '2': const [
    const {'1': 'local_key', '3': 1, '4': 1, '5': 9, '10': 'localKey'},
    const {'1': 'extension', '3': 2, '4': 1, '5': 9, '10': 'extension'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'mime', '3': 4, '4': 1, '5': 9, '10': 'mime'},
  ],
};

/// Descriptor for `UploadStart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadStartDescriptor = $convert.base64Decode('CgtVcGxvYWRTdGFydBIbCglsb2NhbF9rZXkYASABKAlSCGxvY2FsS2V5EhwKCWV4dGVuc2lvbhgCIAEoCVIJZXh0ZW5zaW9uEhIKBG5hbWUYAyABKAlSBG5hbWUSEgoEbWltZRgEIAEoCVIEbWltZQ==');
@$core.Deprecated('Use deleteFileDescriptor instead')
const DeleteFile$json = const {
  '1': 'DeleteFile',
  '2': const [
    const {'1': 'file', '3': 1, '4': 1, '5': 11, '6': '.sfiles.UploadedFile', '10': 'file'},
  ],
};

/// Descriptor for `DeleteFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileDescriptor = $convert.base64Decode('CgpEZWxldGVGaWxlEigKBGZpbGUYASABKAsyFC5zZmlsZXMuVXBsb2FkZWRGaWxlUgRmaWxl');
@$core.Deprecated('Use uploadEndDescriptor instead')
const UploadEnd$json = const {
  '1': 'UploadEnd',
};

/// Descriptor for `UploadEnd`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadEndDescriptor = $convert.base64Decode('CglVcGxvYWRFbmQ=');
