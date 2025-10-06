// This is a generated file - do not edit.
//
// Generated from uploader.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UploadStatus extends $pb.ProtobufEnum {
  static const UploadStatus scheduled =
      UploadStatus._(0, _omitEnumNames ? '' : 'scheduled');
  static const UploadStatus uploading =
      UploadStatus._(1, _omitEnumNames ? '' : 'uploading');
  static const UploadStatus paused =
      UploadStatus._(3, _omitEnumNames ? '' : 'paused');
  static const UploadStatus done =
      UploadStatus._(4, _omitEnumNames ? '' : 'done');
  static const UploadStatus error =
      UploadStatus._(5, _omitEnumNames ? '' : 'error');
  static const UploadStatus restored =
      UploadStatus._(6, _omitEnumNames ? '' : 'restored');

  static const $core.List<UploadStatus> values = <UploadStatus>[
    scheduled,
    uploading,
    paused,
    done,
    error,
    restored,
  ];

  static final $core.List<UploadStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static UploadStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const UploadStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
