///
//  Generated code. Do not modify.
//  source: uploader.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class UploadStatus extends $pb.ProtobufEnum {
  static const UploadStatus scheduled = UploadStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'scheduled');
  static const UploadStatus uploading = UploadStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'uploading');
  static const UploadStatus paused = UploadStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'paused');
  static const UploadStatus done = UploadStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'done');
  static const UploadStatus error = UploadStatus._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'error');
  static const UploadStatus restored = UploadStatus._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'restored');

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

