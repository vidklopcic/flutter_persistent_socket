//
//  Generated code. Do not modify.
//  source: uploader.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UploadStatus extends $pb.ProtobufEnum {
  static const UploadStatus scheduled = UploadStatus._(0, _omitEnumNames ? '' : 'scheduled');
  static const UploadStatus uploading = UploadStatus._(1, _omitEnumNames ? '' : 'uploading');
  static const UploadStatus paused = UploadStatus._(3, _omitEnumNames ? '' : 'paused');
  static const UploadStatus done = UploadStatus._(4, _omitEnumNames ? '' : 'done');
  static const UploadStatus error = UploadStatus._(5, _omitEnumNames ? '' : 'error');
  static const UploadStatus restored = UploadStatus._(6, _omitEnumNames ? '' : 'restored');

  static const $core.List<UploadStatus> values = <UploadStatus> [
    scheduled,
    uploading,
    paused,
    done,
    error,
    restored,
  ];

  static final $core.Map<$core.int, UploadStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UploadStatus? valueOf($core.int value) => _byValue[value];

  const UploadStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
