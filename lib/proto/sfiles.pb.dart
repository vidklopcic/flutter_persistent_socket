///
//  Generated code. Do not modify.
//  source: sfiles.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class UploadStartSlot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UploadStartSlot', package: const $pb.PackageName('sfiles'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOS(2, 'localKey', protoName: 'localKey')
    ..hasRequiredFields = false
  ;

  UploadStartSlot._() : super();
  factory UploadStartSlot() => create();
  factory UploadStartSlot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadStartSlot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UploadStartSlot clone() => UploadStartSlot()..mergeFromMessage(this);
  UploadStartSlot copyWith(void Function(UploadStartSlot) updates) => super.copyWith((message) => updates(message as UploadStartSlot));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadStartSlot create() => UploadStartSlot._();
  UploadStartSlot createEmptyInstance() => create();
  static $pb.PbList<UploadStartSlot> createRepeated() => $pb.PbList<UploadStartSlot>();
  @$core.pragma('dart2js:noInline')
  static UploadStartSlot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadStartSlot>(create);
  static UploadStartSlot _defaultInstance;

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

class UploadProgress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UploadProgress', package: const $pb.PackageName('sfiles'), createEmptyInstance: create)
    ..aInt64(1, 'nBytes', protoName: 'nBytes')
    ..aOS(2, 'key')
    ..aOS(3, 'localKey', protoName: 'localKey')
    ..hasRequiredFields = false
  ;

  UploadProgress._() : super();
  factory UploadProgress() => create();
  factory UploadProgress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadProgress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UploadProgress clone() => UploadProgress()..mergeFromMessage(this);
  UploadProgress copyWith(void Function(UploadProgress) updates) => super.copyWith((message) => updates(message as UploadProgress));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadProgress create() => UploadProgress._();
  UploadProgress createEmptyInstance() => create();
  static $pb.PbList<UploadProgress> createRepeated() => $pb.PbList<UploadProgress>();
  @$core.pragma('dart2js:noInline')
  static UploadProgress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadProgress>(create);
  static UploadProgress _defaultInstance;

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

class UploadDone extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UploadDone', package: const $pb.PackageName('sfiles'), createEmptyInstance: create)
    ..aOS(1, 'key')
    ..aOM<UploadedFile>(2, 'file', subBuilder: UploadedFile.create)
    ..hasRequiredFields = false
  ;

  UploadDone._() : super();
  factory UploadDone() => create();
  factory UploadDone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadDone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UploadDone clone() => UploadDone()..mergeFromMessage(this);
  UploadDone copyWith(void Function(UploadDone) updates) => super.copyWith((message) => updates(message as UploadDone));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadDone create() => UploadDone._();
  UploadDone createEmptyInstance() => create();
  static $pb.PbList<UploadDone> createRepeated() => $pb.PbList<UploadDone>();
  @$core.pragma('dart2js:noInline')
  static UploadDone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadDone>(create);
  static UploadDone _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  UploadedFile get file => $_getN(1);
  @$pb.TagNumber(2)
  set file(UploadedFile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearFile() => clearField(2);
  @$pb.TagNumber(2)
  UploadedFile ensureFile() => $_ensure(1);
}

class UploadedFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UploadedFile', package: const $pb.PackageName('sfiles'), createEmptyInstance: create)
    ..aOS(1, 'localKey', protoName: 'localKey')
    ..aOS(2, 'url')
    ..aOS(3, 'id')
    ..aOS(4, 'mime')
    ..aOS(5, 'thumbUrl', protoName: 'thumbUrl')
    ..aOS(6, 'name')
    ..hasRequiredFields = false
  ;

  UploadedFile._() : super();
  factory UploadedFile() => create();
  factory UploadedFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadedFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UploadedFile clone() => UploadedFile()..mergeFromMessage(this);
  UploadedFile copyWith(void Function(UploadedFile) updates) => super.copyWith((message) => updates(message as UploadedFile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadedFile create() => UploadedFile._();
  UploadedFile createEmptyInstance() => create();
  static $pb.PbList<UploadedFile> createRepeated() => $pb.PbList<UploadedFile>();
  @$core.pragma('dart2js:noInline')
  static UploadedFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadedFile>(create);
  static UploadedFile _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get mime => $_getSZ(3);
  @$pb.TagNumber(4)
  set mime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMime() => $_has(3);
  @$pb.TagNumber(4)
  void clearMime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get thumbUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set thumbUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasThumbUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearThumbUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => clearField(6);
}

class UploadStart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UploadStart', package: const $pb.PackageName('sfiles'), createEmptyInstance: create)
    ..aOS(1, 'localKey', protoName: 'localKey')
    ..aOS(2, 'extension')
    ..aOS(3, 'name')
    ..aOS(4, 'mime')
    ..hasRequiredFields = false
  ;

  UploadStart._() : super();
  factory UploadStart() => create();
  factory UploadStart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadStart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UploadStart clone() => UploadStart()..mergeFromMessage(this);
  UploadStart copyWith(void Function(UploadStart) updates) => super.copyWith((message) => updates(message as UploadStart));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadStart create() => UploadStart._();
  UploadStart createEmptyInstance() => create();
  static $pb.PbList<UploadStart> createRepeated() => $pb.PbList<UploadStart>();
  @$core.pragma('dart2js:noInline')
  static UploadStart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadStart>(create);
  static UploadStart _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mime => $_getSZ(3);
  @$pb.TagNumber(4)
  set mime($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMime() => $_has(3);
  @$pb.TagNumber(4)
  void clearMime() => clearField(4);
}

class DeleteFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteFile', package: const $pb.PackageName('sfiles'), createEmptyInstance: create)
    ..aOM<UploadedFile>(1, 'file', subBuilder: UploadedFile.create)
    ..hasRequiredFields = false
  ;

  DeleteFile._() : super();
  factory DeleteFile() => create();
  factory DeleteFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeleteFile clone() => DeleteFile()..mergeFromMessage(this);
  DeleteFile copyWith(void Function(DeleteFile) updates) => super.copyWith((message) => updates(message as DeleteFile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteFile create() => DeleteFile._();
  DeleteFile createEmptyInstance() => create();
  static $pb.PbList<DeleteFile> createRepeated() => $pb.PbList<DeleteFile>();
  @$core.pragma('dart2js:noInline')
  static DeleteFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFile>(create);
  static DeleteFile _defaultInstance;

  @$pb.TagNumber(1)
  UploadedFile get file => $_getN(0);
  @$pb.TagNumber(1)
  set file(UploadedFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => clearField(1);
  @$pb.TagNumber(1)
  UploadedFile ensureFile() => $_ensure(0);
}

class UploadEnd extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UploadEnd', package: const $pb.PackageName('sfiles'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UploadEnd._() : super();
  factory UploadEnd() => create();
  factory UploadEnd.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadEnd.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UploadEnd clone() => UploadEnd()..mergeFromMessage(this);
  UploadEnd copyWith(void Function(UploadEnd) updates) => super.copyWith((message) => updates(message as UploadEnd));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadEnd create() => UploadEnd._();
  UploadEnd createEmptyInstance() => create();
  static $pb.PbList<UploadEnd> createRepeated() => $pb.PbList<UploadEnd>();
  @$core.pragma('dart2js:noInline')
  static UploadEnd getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadEnd>(create);
  static UploadEnd _defaultInstance;
}
