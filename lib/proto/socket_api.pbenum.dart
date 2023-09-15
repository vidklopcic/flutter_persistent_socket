//
//  Generated code. Do not modify.
//  source: socket_api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AckErrorCode extends $pb.ProtobufEnum {
  static const AckErrorCode error_code_none = AckErrorCode._(0, _omitEnumNames ? '' : 'error_code_none');
  static const AckErrorCode error_code_unauthorized = AckErrorCode._(401, _omitEnumNames ? '' : 'error_code_unauthorized');

  static const $core.List<AckErrorCode> values = <AckErrorCode> [
    error_code_none,
    error_code_unauthorized,
  ];

  static final $core.Map<$core.int, AckErrorCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AckErrorCode? valueOf($core.int value) => _byValue[value];

  const AckErrorCode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
