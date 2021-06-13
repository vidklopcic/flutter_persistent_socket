///
//  Generated code. Do not modify.
//  source: form_errors.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use formErrorsDescriptor instead')
const FormErrors$json = const {
  '1': 'FormErrors',
  '2': const [
    const {'1': 'relatedMessageType', '3': 1, '4': 1, '5': 9, '10': 'relatedMessageType'},
    const {'1': 'errors', '3': 2, '4': 3, '5': 11, '6': '.form_errors.FormErrors.ErrorsEntry', '10': 'errors'},
  ],
  '3': const [FormErrors_ErrorsEntry$json],
};

@$core.Deprecated('Use formErrorsDescriptor instead')
const FormErrors_ErrorsEntry$json = const {
  '1': 'ErrorsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.form_errors.SList', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `FormErrors`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List formErrorsDescriptor = $convert.base64Decode('CgpGb3JtRXJyb3JzEi4KEnJlbGF0ZWRNZXNzYWdlVHlwZRgBIAEoCVIScmVsYXRlZE1lc3NhZ2VUeXBlEjsKBmVycm9ycxgCIAMoCzIjLmZvcm1fZXJyb3JzLkZvcm1FcnJvcnMuRXJyb3JzRW50cnlSBmVycm9ycxpNCgtFcnJvcnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIoCgV2YWx1ZRgCIAEoCzISLmZvcm1fZXJyb3JzLlNMaXN0UgV2YWx1ZToCOAE=');
@$core.Deprecated('Use sListDescriptor instead')
const SList$json = const {
  '1': 'SList',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 9, '10': 'list'},
  ],
};

/// Descriptor for `SList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sListDescriptor = $convert.base64Decode('CgVTTGlzdBISCgRsaXN0GAEgAygJUgRsaXN0');
