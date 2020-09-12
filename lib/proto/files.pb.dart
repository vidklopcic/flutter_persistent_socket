///
//  Generated code. Do not modify.
//  source: files.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class RxUploadStartData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RxUploadStartData', package: const $pb.PackageName('files'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOS(2, 'localKey', protoName: 'localKey')
    ..hasRequiredFields = false
  ;

  RxUploadStartData._() : super();
  factory RxUploadStartData() => create();
  factory RxUploadStartData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RxUploadStartData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RxUploadStartData clone() => RxUploadStartData()..mergeFromMessage(this);
  RxUploadStartData copyWith(void Function(RxUploadStartData) updates) => super.copyWith((message) => updates(message as RxUploadStartData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RxUploadStartData create() => RxUploadStartData._();
  RxUploadStartData createEmptyInstance() => create();
  static $pb.PbList<RxUploadStartData> createRepeated() => $pb.PbList<RxUploadStartData>();
  @$core.pragma('dart2js:noInline')
  static RxUploadStartData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RxUploadStartData>(create);
  static RxUploadStartData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get localKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set localKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocalKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalKey() => clearField(2);
}

class RxUploadProgressData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RxUploadProgressData', package: const $pb.PackageName('files'), createEmptyInstance: create)
    ..aInt64(1, 'nBytes', protoName: 'nBytes')
    ..aOS(2, 'key')
    ..aOS(3, 'localKey', protoName: 'localKey')
    ..hasRequiredFields = false
  ;

  RxUploadProgressData._() : super();
  factory RxUploadProgressData() => create();
  factory RxUploadProgressData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RxUploadProgressData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RxUploadProgressData clone() => RxUploadProgressData()..mergeFromMessage(this);
  RxUploadProgressData copyWith(void Function(RxUploadProgressData) updates) => super.copyWith((message) => updates(message as RxUploadProgressData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RxUploadProgressData create() => RxUploadProgressData._();
  RxUploadProgressData createEmptyInstance() => create();
  static $pb.PbList<RxUploadProgressData> createRepeated() => $pb.PbList<RxUploadProgressData>();
  @$core.pragma('dart2js:noInline')
  static RxUploadProgressData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RxUploadProgressData>(create);
  static RxUploadProgressData _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set nBytes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearNBytes() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get localKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set localKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocalKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocalKey() => clearField(3);
}

class RxUploadDoneData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RxUploadDoneData', package: const $pb.PackageName('files'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOM<File>(2, 'file', subBuilder: File.create)
    ..hasRequiredFields = false
  ;

  RxUploadDoneData._() : super();
  factory RxUploadDoneData() => create();
  factory RxUploadDoneData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RxUploadDoneData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RxUploadDoneData clone() => RxUploadDoneData()..mergeFromMessage(this);
  RxUploadDoneData copyWith(void Function(RxUploadDoneData) updates) => super.copyWith((message) => updates(message as RxUploadDoneData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RxUploadDoneData create() => RxUploadDoneData._();
  RxUploadDoneData createEmptyInstance() => create();
  static $pb.PbList<RxUploadDoneData> createRepeated() => $pb.PbList<RxUploadDoneData>();
  @$core.pragma('dart2js:noInline')
  static RxUploadDoneData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RxUploadDoneData>(create);
  static RxUploadDoneData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  File get file => $_getN(1);
  @$pb.TagNumber(2)
  set file(File v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearFile() => clearField(2);
  @$pb.TagNumber(2)
  File ensureFile() => $_ensure(1);
}

class File extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('File', package: const $pb.PackageName('files'), createEmptyInstance: create)
    ..aOS(1, 'localKey', protoName: 'localKey')
    ..aOS(2, 'url')
    ..aOS(3, 'id')
    ..hasRequiredFields = false
  ;

  File._() : super();
  factory File() => create();
  factory File.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory File.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  File clone() => File()..mergeFromMessage(this);
  File copyWith(void Function(File) updates) => super.copyWith((message) => updates(message as File));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static File create() => File._();
  File createEmptyInstance() => create();
  static $pb.PbList<File> createRepeated() => $pb.PbList<File>();
  @$core.pragma('dart2js:noInline')
  static File getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<File>(create);
  static File _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get localKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set localKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocalKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(3)
  set id($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => clearField(3);
}

class TxUploadStartData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxUploadStartData', package: const $pb.PackageName('files'), createEmptyInstance: create)
    ..aOS(1, 'localKey', protoName: 'localKey')
    ..aOS(2, 'extension')
    ..hasRequiredFields = false
  ;

  TxUploadStartData._() : super();
  factory TxUploadStartData() => create();
  factory TxUploadStartData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxUploadStartData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxUploadStartData clone() => TxUploadStartData()..mergeFromMessage(this);
  TxUploadStartData copyWith(void Function(TxUploadStartData) updates) => super.copyWith((message) => updates(message as TxUploadStartData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxUploadStartData create() => TxUploadStartData._();
  TxUploadStartData createEmptyInstance() => create();
  static $pb.PbList<TxUploadStartData> createRepeated() => $pb.PbList<TxUploadStartData>();
  @$core.pragma('dart2js:noInline')
  static TxUploadStartData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxUploadStartData>(create);
  static TxUploadStartData _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get localKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set localKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocalKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get extension_2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set extension_2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExtension_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtension_2() => clearField(2);
}

class TxDeleteFileData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxDeleteFileData', package: const $pb.PackageName('files'), createEmptyInstance: create)
    ..aOM<File>(1, 'file', subBuilder: File.create)
    ..hasRequiredFields = false
  ;

  TxDeleteFileData._() : super();
  factory TxDeleteFileData() => create();
  factory TxDeleteFileData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxDeleteFileData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxDeleteFileData clone() => TxDeleteFileData()..mergeFromMessage(this);
  TxDeleteFileData copyWith(void Function(TxDeleteFileData) updates) => super.copyWith((message) => updates(message as TxDeleteFileData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxDeleteFileData create() => TxDeleteFileData._();
  TxDeleteFileData createEmptyInstance() => create();
  static $pb.PbList<TxDeleteFileData> createRepeated() => $pb.PbList<TxDeleteFileData>();
  @$core.pragma('dart2js:noInline')
  static TxDeleteFileData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxDeleteFileData>(create);
  static TxDeleteFileData _defaultInstance;

  @$pb.TagNumber(1)
  File get file => $_getN(0);
  @$pb.TagNumber(1)
  set file(File v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => clearField(1);
  @$pb.TagNumber(1)
  File ensureFile() => $_ensure(0);
}

