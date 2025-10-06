// This is a generated file - do not edit.
//
// Generated from socket_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AckErrorCode extends $pb.ProtobufEnum {
  static const AckErrorCode error_code_none =
      AckErrorCode._(0, _omitEnumNames ? '' : 'error_code_none');
  static const AckErrorCode error_code_unauthorized =
      AckErrorCode._(401, _omitEnumNames ? '' : 'error_code_unauthorized');

  static const $core.List<AckErrorCode> values = <AckErrorCode>[
    error_code_none,
    error_code_unauthorized,
  ];

  static final $core.Map<$core.int, AckErrorCode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AckErrorCode? valueOf($core.int value) => _byValue[value];

  const AckErrorCode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
