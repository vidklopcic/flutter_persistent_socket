// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $SocketTxEventsTable extends SocketTxEvents
    with TableInfo<$SocketTxEventsTable, SocketTxEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SocketTxEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _jsonContentMeta =
      const VerificationMeta('jsonContent');
  @override
  late final GeneratedColumn<String> jsonContent = GeneratedColumn<String>(
      'json_content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timeRecordedMeta =
      const VerificationMeta('timeRecorded');
  @override
  late final GeneratedColumn<DateTime> timeRecorded = GeneratedColumn<DateTime>(
      'time_recorded', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  static const VerificationMeta _expiresMeta =
      const VerificationMeta('expires');
  @override
  late final GeneratedColumn<DateTime> expires = GeneratedColumn<DateTime>(
      'expires', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _dateKey0Meta =
      const VerificationMeta('dateKey0');
  @override
  late final GeneratedColumn<DateTime> dateKey0 = GeneratedColumn<DateTime>(
      'date_key0', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dateKey1Meta =
      const VerificationMeta('dateKey1');
  @override
  late final GeneratedColumn<DateTime> dateKey1 = GeneratedColumn<DateTime>(
      'date_key1', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dateKey2Meta =
      const VerificationMeta('dateKey2');
  @override
  late final GeneratedColumn<DateTime> dateKey2 = GeneratedColumn<DateTime>(
      'date_key2', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dateKey3Meta =
      const VerificationMeta('dateKey3');
  @override
  late final GeneratedColumn<DateTime> dateKey3 = GeneratedColumn<DateTime>(
      'date_key3', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dateKey4Meta =
      const VerificationMeta('dateKey4');
  @override
  late final GeneratedColumn<DateTime> dateKey4 = GeneratedColumn<DateTime>(
      'date_key4', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _textKey0Meta =
      const VerificationMeta('textKey0');
  @override
  late final GeneratedColumn<String> textKey0 = GeneratedColumn<String>(
      'text_key0', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _textKey1Meta =
      const VerificationMeta('textKey1');
  @override
  late final GeneratedColumn<String> textKey1 = GeneratedColumn<String>(
      'text_key1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _textKey2Meta =
      const VerificationMeta('textKey2');
  @override
  late final GeneratedColumn<String> textKey2 = GeneratedColumn<String>(
      'text_key2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _textKey3Meta =
      const VerificationMeta('textKey3');
  @override
  late final GeneratedColumn<String> textKey3 = GeneratedColumn<String>(
      'text_key3', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _textKey4Meta =
      const VerificationMeta('textKey4');
  @override
  late final GeneratedColumn<String> textKey4 = GeneratedColumn<String>(
      'text_key4', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _realKey0Meta =
      const VerificationMeta('realKey0');
  @override
  late final GeneratedColumn<double> realKey0 = GeneratedColumn<double>(
      'real_key0', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _realKey1Meta =
      const VerificationMeta('realKey1');
  @override
  late final GeneratedColumn<double> realKey1 = GeneratedColumn<double>(
      'real_key1', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _realKey2Meta =
      const VerificationMeta('realKey2');
  @override
  late final GeneratedColumn<double> realKey2 = GeneratedColumn<double>(
      'real_key2', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _realKey3Meta =
      const VerificationMeta('realKey3');
  @override
  late final GeneratedColumn<double> realKey3 = GeneratedColumn<double>(
      'real_key3', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _realKey4Meta =
      const VerificationMeta('realKey4');
  @override
  late final GeneratedColumn<double> realKey4 = GeneratedColumn<double>(
      'real_key4', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _intKey0Meta =
      const VerificationMeta('intKey0');
  @override
  late final GeneratedColumn<int> intKey0 = GeneratedColumn<int>(
      'int_key0', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intKey1Meta =
      const VerificationMeta('intKey1');
  @override
  late final GeneratedColumn<int> intKey1 = GeneratedColumn<int>(
      'int_key1', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intKey2Meta =
      const VerificationMeta('intKey2');
  @override
  late final GeneratedColumn<int> intKey2 = GeneratedColumn<int>(
      'int_key2', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intKey3Meta =
      const VerificationMeta('intKey3');
  @override
  late final GeneratedColumn<int> intKey3 = GeneratedColumn<int>(
      'int_key3', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intKey4Meta =
      const VerificationMeta('intKey4');
  @override
  late final GeneratedColumn<int> intKey4 = GeneratedColumn<int>(
      'int_key4', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        uuid,
        type,
        jsonContent,
        timeRecorded,
        expires,
        dateKey0,
        dateKey1,
        dateKey2,
        dateKey3,
        dateKey4,
        textKey0,
        textKey1,
        textKey2,
        textKey3,
        textKey4,
        realKey0,
        realKey1,
        realKey2,
        realKey3,
        realKey4,
        intKey0,
        intKey1,
        intKey2,
        intKey3,
        intKey4
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'socket_tx_events';
  @override
  VerificationContext validateIntegrity(Insertable<SocketTxEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('json_content')) {
      context.handle(
          _jsonContentMeta,
          jsonContent.isAcceptableOrUnknown(
              data['json_content']!, _jsonContentMeta));
    } else if (isInserting) {
      context.missing(_jsonContentMeta);
    }
    if (data.containsKey('time_recorded')) {
      context.handle(
          _timeRecordedMeta,
          timeRecorded.isAcceptableOrUnknown(
              data['time_recorded']!, _timeRecordedMeta));
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires']!, _expiresMeta));
    } else if (isInserting) {
      context.missing(_expiresMeta);
    }
    if (data.containsKey('date_key0')) {
      context.handle(_dateKey0Meta,
          dateKey0.isAcceptableOrUnknown(data['date_key0']!, _dateKey0Meta));
    }
    if (data.containsKey('date_key1')) {
      context.handle(_dateKey1Meta,
          dateKey1.isAcceptableOrUnknown(data['date_key1']!, _dateKey1Meta));
    }
    if (data.containsKey('date_key2')) {
      context.handle(_dateKey2Meta,
          dateKey2.isAcceptableOrUnknown(data['date_key2']!, _dateKey2Meta));
    }
    if (data.containsKey('date_key3')) {
      context.handle(_dateKey3Meta,
          dateKey3.isAcceptableOrUnknown(data['date_key3']!, _dateKey3Meta));
    }
    if (data.containsKey('date_key4')) {
      context.handle(_dateKey4Meta,
          dateKey4.isAcceptableOrUnknown(data['date_key4']!, _dateKey4Meta));
    }
    if (data.containsKey('text_key0')) {
      context.handle(_textKey0Meta,
          textKey0.isAcceptableOrUnknown(data['text_key0']!, _textKey0Meta));
    }
    if (data.containsKey('text_key1')) {
      context.handle(_textKey1Meta,
          textKey1.isAcceptableOrUnknown(data['text_key1']!, _textKey1Meta));
    }
    if (data.containsKey('text_key2')) {
      context.handle(_textKey2Meta,
          textKey2.isAcceptableOrUnknown(data['text_key2']!, _textKey2Meta));
    }
    if (data.containsKey('text_key3')) {
      context.handle(_textKey3Meta,
          textKey3.isAcceptableOrUnknown(data['text_key3']!, _textKey3Meta));
    }
    if (data.containsKey('text_key4')) {
      context.handle(_textKey4Meta,
          textKey4.isAcceptableOrUnknown(data['text_key4']!, _textKey4Meta));
    }
    if (data.containsKey('real_key0')) {
      context.handle(_realKey0Meta,
          realKey0.isAcceptableOrUnknown(data['real_key0']!, _realKey0Meta));
    }
    if (data.containsKey('real_key1')) {
      context.handle(_realKey1Meta,
          realKey1.isAcceptableOrUnknown(data['real_key1']!, _realKey1Meta));
    }
    if (data.containsKey('real_key2')) {
      context.handle(_realKey2Meta,
          realKey2.isAcceptableOrUnknown(data['real_key2']!, _realKey2Meta));
    }
    if (data.containsKey('real_key3')) {
      context.handle(_realKey3Meta,
          realKey3.isAcceptableOrUnknown(data['real_key3']!, _realKey3Meta));
    }
    if (data.containsKey('real_key4')) {
      context.handle(_realKey4Meta,
          realKey4.isAcceptableOrUnknown(data['real_key4']!, _realKey4Meta));
    }
    if (data.containsKey('int_key0')) {
      context.handle(_intKey0Meta,
          intKey0.isAcceptableOrUnknown(data['int_key0']!, _intKey0Meta));
    }
    if (data.containsKey('int_key1')) {
      context.handle(_intKey1Meta,
          intKey1.isAcceptableOrUnknown(data['int_key1']!, _intKey1Meta));
    }
    if (data.containsKey('int_key2')) {
      context.handle(_intKey2Meta,
          intKey2.isAcceptableOrUnknown(data['int_key2']!, _intKey2Meta));
    }
    if (data.containsKey('int_key3')) {
      context.handle(_intKey3Meta,
          intKey3.isAcceptableOrUnknown(data['int_key3']!, _intKey3Meta));
    }
    if (data.containsKey('int_key4')) {
      context.handle(_intKey4Meta,
          intKey4.isAcceptableOrUnknown(data['int_key4']!, _intKey4Meta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  SocketTxEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SocketTxEvent(
      uuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      jsonContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}json_content'])!,
      timeRecorded: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}time_recorded'])!,
      expires: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expires'])!,
      dateKey0: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key0']),
      dateKey1: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key1']),
      dateKey2: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key2']),
      dateKey3: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key3']),
      dateKey4: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key4']),
      textKey0: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key0']),
      textKey1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key1']),
      textKey2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key2']),
      textKey3: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key3']),
      textKey4: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key4']),
      realKey0: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key0']),
      realKey1: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key1']),
      realKey2: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key2']),
      realKey3: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key3']),
      realKey4: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key4']),
      intKey0: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key0']),
      intKey1: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key1']),
      intKey2: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key2']),
      intKey3: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key3']),
      intKey4: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key4']),
    );
  }

  @override
  $SocketTxEventsTable createAlias(String alias) {
    return $SocketTxEventsTable(attachedDatabase, alias);
  }
}

class SocketTxEvent extends DataClass implements Insertable<SocketTxEvent> {
  final String uuid;
  final String type;
  final String jsonContent;
  final DateTime timeRecorded;
  final DateTime expires;
  final DateTime? dateKey0;
  final DateTime? dateKey1;
  final DateTime? dateKey2;
  final DateTime? dateKey3;
  final DateTime? dateKey4;
  final String? textKey0;
  final String? textKey1;
  final String? textKey2;
  final String? textKey3;
  final String? textKey4;
  final double? realKey0;
  final double? realKey1;
  final double? realKey2;
  final double? realKey3;
  final double? realKey4;
  final int? intKey0;
  final int? intKey1;
  final int? intKey2;
  final int? intKey3;
  final int? intKey4;
  const SocketTxEvent(
      {required this.uuid,
      required this.type,
      required this.jsonContent,
      required this.timeRecorded,
      required this.expires,
      this.dateKey0,
      this.dateKey1,
      this.dateKey2,
      this.dateKey3,
      this.dateKey4,
      this.textKey0,
      this.textKey1,
      this.textKey2,
      this.textKey3,
      this.textKey4,
      this.realKey0,
      this.realKey1,
      this.realKey2,
      this.realKey3,
      this.realKey4,
      this.intKey0,
      this.intKey1,
      this.intKey2,
      this.intKey3,
      this.intKey4});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['type'] = Variable<String>(type);
    map['json_content'] = Variable<String>(jsonContent);
    map['time_recorded'] = Variable<DateTime>(timeRecorded);
    map['expires'] = Variable<DateTime>(expires);
    if (!nullToAbsent || dateKey0 != null) {
      map['date_key0'] = Variable<DateTime>(dateKey0);
    }
    if (!nullToAbsent || dateKey1 != null) {
      map['date_key1'] = Variable<DateTime>(dateKey1);
    }
    if (!nullToAbsent || dateKey2 != null) {
      map['date_key2'] = Variable<DateTime>(dateKey2);
    }
    if (!nullToAbsent || dateKey3 != null) {
      map['date_key3'] = Variable<DateTime>(dateKey3);
    }
    if (!nullToAbsent || dateKey4 != null) {
      map['date_key4'] = Variable<DateTime>(dateKey4);
    }
    if (!nullToAbsent || textKey0 != null) {
      map['text_key0'] = Variable<String>(textKey0);
    }
    if (!nullToAbsent || textKey1 != null) {
      map['text_key1'] = Variable<String>(textKey1);
    }
    if (!nullToAbsent || textKey2 != null) {
      map['text_key2'] = Variable<String>(textKey2);
    }
    if (!nullToAbsent || textKey3 != null) {
      map['text_key3'] = Variable<String>(textKey3);
    }
    if (!nullToAbsent || textKey4 != null) {
      map['text_key4'] = Variable<String>(textKey4);
    }
    if (!nullToAbsent || realKey0 != null) {
      map['real_key0'] = Variable<double>(realKey0);
    }
    if (!nullToAbsent || realKey1 != null) {
      map['real_key1'] = Variable<double>(realKey1);
    }
    if (!nullToAbsent || realKey2 != null) {
      map['real_key2'] = Variable<double>(realKey2);
    }
    if (!nullToAbsent || realKey3 != null) {
      map['real_key3'] = Variable<double>(realKey3);
    }
    if (!nullToAbsent || realKey4 != null) {
      map['real_key4'] = Variable<double>(realKey4);
    }
    if (!nullToAbsent || intKey0 != null) {
      map['int_key0'] = Variable<int>(intKey0);
    }
    if (!nullToAbsent || intKey1 != null) {
      map['int_key1'] = Variable<int>(intKey1);
    }
    if (!nullToAbsent || intKey2 != null) {
      map['int_key2'] = Variable<int>(intKey2);
    }
    if (!nullToAbsent || intKey3 != null) {
      map['int_key3'] = Variable<int>(intKey3);
    }
    if (!nullToAbsent || intKey4 != null) {
      map['int_key4'] = Variable<int>(intKey4);
    }
    return map;
  }

  SocketTxEventsCompanion toCompanion(bool nullToAbsent) {
    return SocketTxEventsCompanion(
      uuid: Value(uuid),
      type: Value(type),
      jsonContent: Value(jsonContent),
      timeRecorded: Value(timeRecorded),
      expires: Value(expires),
      dateKey0: dateKey0 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey0),
      dateKey1: dateKey1 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey1),
      dateKey2: dateKey2 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey2),
      dateKey3: dateKey3 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey3),
      dateKey4: dateKey4 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey4),
      textKey0: textKey0 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey0),
      textKey1: textKey1 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey1),
      textKey2: textKey2 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey2),
      textKey3: textKey3 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey3),
      textKey4: textKey4 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey4),
      realKey0: realKey0 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey0),
      realKey1: realKey1 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey1),
      realKey2: realKey2 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey2),
      realKey3: realKey3 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey3),
      realKey4: realKey4 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey4),
      intKey0: intKey0 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey0),
      intKey1: intKey1 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey1),
      intKey2: intKey2 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey2),
      intKey3: intKey3 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey3),
      intKey4: intKey4 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey4),
    );
  }

  factory SocketTxEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SocketTxEvent(
      uuid: serializer.fromJson<String>(json['uuid']),
      type: serializer.fromJson<String>(json['type']),
      jsonContent: serializer.fromJson<String>(json['jsonContent']),
      timeRecorded: serializer.fromJson<DateTime>(json['timeRecorded']),
      expires: serializer.fromJson<DateTime>(json['expires']),
      dateKey0: serializer.fromJson<DateTime?>(json['dateKey0']),
      dateKey1: serializer.fromJson<DateTime?>(json['dateKey1']),
      dateKey2: serializer.fromJson<DateTime?>(json['dateKey2']),
      dateKey3: serializer.fromJson<DateTime?>(json['dateKey3']),
      dateKey4: serializer.fromJson<DateTime?>(json['dateKey4']),
      textKey0: serializer.fromJson<String?>(json['textKey0']),
      textKey1: serializer.fromJson<String?>(json['textKey1']),
      textKey2: serializer.fromJson<String?>(json['textKey2']),
      textKey3: serializer.fromJson<String?>(json['textKey3']),
      textKey4: serializer.fromJson<String?>(json['textKey4']),
      realKey0: serializer.fromJson<double?>(json['realKey0']),
      realKey1: serializer.fromJson<double?>(json['realKey1']),
      realKey2: serializer.fromJson<double?>(json['realKey2']),
      realKey3: serializer.fromJson<double?>(json['realKey3']),
      realKey4: serializer.fromJson<double?>(json['realKey4']),
      intKey0: serializer.fromJson<int?>(json['intKey0']),
      intKey1: serializer.fromJson<int?>(json['intKey1']),
      intKey2: serializer.fromJson<int?>(json['intKey2']),
      intKey3: serializer.fromJson<int?>(json['intKey3']),
      intKey4: serializer.fromJson<int?>(json['intKey4']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'type': serializer.toJson<String>(type),
      'jsonContent': serializer.toJson<String>(jsonContent),
      'timeRecorded': serializer.toJson<DateTime>(timeRecorded),
      'expires': serializer.toJson<DateTime>(expires),
      'dateKey0': serializer.toJson<DateTime?>(dateKey0),
      'dateKey1': serializer.toJson<DateTime?>(dateKey1),
      'dateKey2': serializer.toJson<DateTime?>(dateKey2),
      'dateKey3': serializer.toJson<DateTime?>(dateKey3),
      'dateKey4': serializer.toJson<DateTime?>(dateKey4),
      'textKey0': serializer.toJson<String?>(textKey0),
      'textKey1': serializer.toJson<String?>(textKey1),
      'textKey2': serializer.toJson<String?>(textKey2),
      'textKey3': serializer.toJson<String?>(textKey3),
      'textKey4': serializer.toJson<String?>(textKey4),
      'realKey0': serializer.toJson<double?>(realKey0),
      'realKey1': serializer.toJson<double?>(realKey1),
      'realKey2': serializer.toJson<double?>(realKey2),
      'realKey3': serializer.toJson<double?>(realKey3),
      'realKey4': serializer.toJson<double?>(realKey4),
      'intKey0': serializer.toJson<int?>(intKey0),
      'intKey1': serializer.toJson<int?>(intKey1),
      'intKey2': serializer.toJson<int?>(intKey2),
      'intKey3': serializer.toJson<int?>(intKey3),
      'intKey4': serializer.toJson<int?>(intKey4),
    };
  }

  SocketTxEvent copyWith(
          {String? uuid,
          String? type,
          String? jsonContent,
          DateTime? timeRecorded,
          DateTime? expires,
          Value<DateTime?> dateKey0 = const Value.absent(),
          Value<DateTime?> dateKey1 = const Value.absent(),
          Value<DateTime?> dateKey2 = const Value.absent(),
          Value<DateTime?> dateKey3 = const Value.absent(),
          Value<DateTime?> dateKey4 = const Value.absent(),
          Value<String?> textKey0 = const Value.absent(),
          Value<String?> textKey1 = const Value.absent(),
          Value<String?> textKey2 = const Value.absent(),
          Value<String?> textKey3 = const Value.absent(),
          Value<String?> textKey4 = const Value.absent(),
          Value<double?> realKey0 = const Value.absent(),
          Value<double?> realKey1 = const Value.absent(),
          Value<double?> realKey2 = const Value.absent(),
          Value<double?> realKey3 = const Value.absent(),
          Value<double?> realKey4 = const Value.absent(),
          Value<int?> intKey0 = const Value.absent(),
          Value<int?> intKey1 = const Value.absent(),
          Value<int?> intKey2 = const Value.absent(),
          Value<int?> intKey3 = const Value.absent(),
          Value<int?> intKey4 = const Value.absent()}) =>
      SocketTxEvent(
        uuid: uuid ?? this.uuid,
        type: type ?? this.type,
        jsonContent: jsonContent ?? this.jsonContent,
        timeRecorded: timeRecorded ?? this.timeRecorded,
        expires: expires ?? this.expires,
        dateKey0: dateKey0.present ? dateKey0.value : this.dateKey0,
        dateKey1: dateKey1.present ? dateKey1.value : this.dateKey1,
        dateKey2: dateKey2.present ? dateKey2.value : this.dateKey2,
        dateKey3: dateKey3.present ? dateKey3.value : this.dateKey3,
        dateKey4: dateKey4.present ? dateKey4.value : this.dateKey4,
        textKey0: textKey0.present ? textKey0.value : this.textKey0,
        textKey1: textKey1.present ? textKey1.value : this.textKey1,
        textKey2: textKey2.present ? textKey2.value : this.textKey2,
        textKey3: textKey3.present ? textKey3.value : this.textKey3,
        textKey4: textKey4.present ? textKey4.value : this.textKey4,
        realKey0: realKey0.present ? realKey0.value : this.realKey0,
        realKey1: realKey1.present ? realKey1.value : this.realKey1,
        realKey2: realKey2.present ? realKey2.value : this.realKey2,
        realKey3: realKey3.present ? realKey3.value : this.realKey3,
        realKey4: realKey4.present ? realKey4.value : this.realKey4,
        intKey0: intKey0.present ? intKey0.value : this.intKey0,
        intKey1: intKey1.present ? intKey1.value : this.intKey1,
        intKey2: intKey2.present ? intKey2.value : this.intKey2,
        intKey3: intKey3.present ? intKey3.value : this.intKey3,
        intKey4: intKey4.present ? intKey4.value : this.intKey4,
      );
  @override
  String toString() {
    return (StringBuffer('SocketTxEvent(')
          ..write('uuid: $uuid, ')
          ..write('type: $type, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('expires: $expires, ')
          ..write('dateKey0: $dateKey0, ')
          ..write('dateKey1: $dateKey1, ')
          ..write('dateKey2: $dateKey2, ')
          ..write('dateKey3: $dateKey3, ')
          ..write('dateKey4: $dateKey4, ')
          ..write('textKey0: $textKey0, ')
          ..write('textKey1: $textKey1, ')
          ..write('textKey2: $textKey2, ')
          ..write('textKey3: $textKey3, ')
          ..write('textKey4: $textKey4, ')
          ..write('realKey0: $realKey0, ')
          ..write('realKey1: $realKey1, ')
          ..write('realKey2: $realKey2, ')
          ..write('realKey3: $realKey3, ')
          ..write('realKey4: $realKey4, ')
          ..write('intKey0: $intKey0, ')
          ..write('intKey1: $intKey1, ')
          ..write('intKey2: $intKey2, ')
          ..write('intKey3: $intKey3, ')
          ..write('intKey4: $intKey4')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        uuid,
        type,
        jsonContent,
        timeRecorded,
        expires,
        dateKey0,
        dateKey1,
        dateKey2,
        dateKey3,
        dateKey4,
        textKey0,
        textKey1,
        textKey2,
        textKey3,
        textKey4,
        realKey0,
        realKey1,
        realKey2,
        realKey3,
        realKey4,
        intKey0,
        intKey1,
        intKey2,
        intKey3,
        intKey4
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SocketTxEvent &&
          other.uuid == this.uuid &&
          other.type == this.type &&
          other.jsonContent == this.jsonContent &&
          other.timeRecorded == this.timeRecorded &&
          other.expires == this.expires &&
          other.dateKey0 == this.dateKey0 &&
          other.dateKey1 == this.dateKey1 &&
          other.dateKey2 == this.dateKey2 &&
          other.dateKey3 == this.dateKey3 &&
          other.dateKey4 == this.dateKey4 &&
          other.textKey0 == this.textKey0 &&
          other.textKey1 == this.textKey1 &&
          other.textKey2 == this.textKey2 &&
          other.textKey3 == this.textKey3 &&
          other.textKey4 == this.textKey4 &&
          other.realKey0 == this.realKey0 &&
          other.realKey1 == this.realKey1 &&
          other.realKey2 == this.realKey2 &&
          other.realKey3 == this.realKey3 &&
          other.realKey4 == this.realKey4 &&
          other.intKey0 == this.intKey0 &&
          other.intKey1 == this.intKey1 &&
          other.intKey2 == this.intKey2 &&
          other.intKey3 == this.intKey3 &&
          other.intKey4 == this.intKey4);
}

class SocketTxEventsCompanion extends UpdateCompanion<SocketTxEvent> {
  final Value<String> uuid;
  final Value<String> type;
  final Value<String> jsonContent;
  final Value<DateTime> timeRecorded;
  final Value<DateTime> expires;
  final Value<DateTime?> dateKey0;
  final Value<DateTime?> dateKey1;
  final Value<DateTime?> dateKey2;
  final Value<DateTime?> dateKey3;
  final Value<DateTime?> dateKey4;
  final Value<String?> textKey0;
  final Value<String?> textKey1;
  final Value<String?> textKey2;
  final Value<String?> textKey3;
  final Value<String?> textKey4;
  final Value<double?> realKey0;
  final Value<double?> realKey1;
  final Value<double?> realKey2;
  final Value<double?> realKey3;
  final Value<double?> realKey4;
  final Value<int?> intKey0;
  final Value<int?> intKey1;
  final Value<int?> intKey2;
  final Value<int?> intKey3;
  final Value<int?> intKey4;
  final Value<int> rowid;
  const SocketTxEventsCompanion({
    this.uuid = const Value.absent(),
    this.type = const Value.absent(),
    this.jsonContent = const Value.absent(),
    this.timeRecorded = const Value.absent(),
    this.expires = const Value.absent(),
    this.dateKey0 = const Value.absent(),
    this.dateKey1 = const Value.absent(),
    this.dateKey2 = const Value.absent(),
    this.dateKey3 = const Value.absent(),
    this.dateKey4 = const Value.absent(),
    this.textKey0 = const Value.absent(),
    this.textKey1 = const Value.absent(),
    this.textKey2 = const Value.absent(),
    this.textKey3 = const Value.absent(),
    this.textKey4 = const Value.absent(),
    this.realKey0 = const Value.absent(),
    this.realKey1 = const Value.absent(),
    this.realKey2 = const Value.absent(),
    this.realKey3 = const Value.absent(),
    this.realKey4 = const Value.absent(),
    this.intKey0 = const Value.absent(),
    this.intKey1 = const Value.absent(),
    this.intKey2 = const Value.absent(),
    this.intKey3 = const Value.absent(),
    this.intKey4 = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SocketTxEventsCompanion.insert({
    required String uuid,
    required String type,
    required String jsonContent,
    this.timeRecorded = const Value.absent(),
    required DateTime expires,
    this.dateKey0 = const Value.absent(),
    this.dateKey1 = const Value.absent(),
    this.dateKey2 = const Value.absent(),
    this.dateKey3 = const Value.absent(),
    this.dateKey4 = const Value.absent(),
    this.textKey0 = const Value.absent(),
    this.textKey1 = const Value.absent(),
    this.textKey2 = const Value.absent(),
    this.textKey3 = const Value.absent(),
    this.textKey4 = const Value.absent(),
    this.realKey0 = const Value.absent(),
    this.realKey1 = const Value.absent(),
    this.realKey2 = const Value.absent(),
    this.realKey3 = const Value.absent(),
    this.realKey4 = const Value.absent(),
    this.intKey0 = const Value.absent(),
    this.intKey1 = const Value.absent(),
    this.intKey2 = const Value.absent(),
    this.intKey3 = const Value.absent(),
    this.intKey4 = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : uuid = Value(uuid),
        type = Value(type),
        jsonContent = Value(jsonContent),
        expires = Value(expires);
  static Insertable<SocketTxEvent> custom({
    Expression<String>? uuid,
    Expression<String>? type,
    Expression<String>? jsonContent,
    Expression<DateTime>? timeRecorded,
    Expression<DateTime>? expires,
    Expression<DateTime>? dateKey0,
    Expression<DateTime>? dateKey1,
    Expression<DateTime>? dateKey2,
    Expression<DateTime>? dateKey3,
    Expression<DateTime>? dateKey4,
    Expression<String>? textKey0,
    Expression<String>? textKey1,
    Expression<String>? textKey2,
    Expression<String>? textKey3,
    Expression<String>? textKey4,
    Expression<double>? realKey0,
    Expression<double>? realKey1,
    Expression<double>? realKey2,
    Expression<double>? realKey3,
    Expression<double>? realKey4,
    Expression<int>? intKey0,
    Expression<int>? intKey1,
    Expression<int>? intKey2,
    Expression<int>? intKey3,
    Expression<int>? intKey4,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (type != null) 'type': type,
      if (jsonContent != null) 'json_content': jsonContent,
      if (timeRecorded != null) 'time_recorded': timeRecorded,
      if (expires != null) 'expires': expires,
      if (dateKey0 != null) 'date_key0': dateKey0,
      if (dateKey1 != null) 'date_key1': dateKey1,
      if (dateKey2 != null) 'date_key2': dateKey2,
      if (dateKey3 != null) 'date_key3': dateKey3,
      if (dateKey4 != null) 'date_key4': dateKey4,
      if (textKey0 != null) 'text_key0': textKey0,
      if (textKey1 != null) 'text_key1': textKey1,
      if (textKey2 != null) 'text_key2': textKey2,
      if (textKey3 != null) 'text_key3': textKey3,
      if (textKey4 != null) 'text_key4': textKey4,
      if (realKey0 != null) 'real_key0': realKey0,
      if (realKey1 != null) 'real_key1': realKey1,
      if (realKey2 != null) 'real_key2': realKey2,
      if (realKey3 != null) 'real_key3': realKey3,
      if (realKey4 != null) 'real_key4': realKey4,
      if (intKey0 != null) 'int_key0': intKey0,
      if (intKey1 != null) 'int_key1': intKey1,
      if (intKey2 != null) 'int_key2': intKey2,
      if (intKey3 != null) 'int_key3': intKey3,
      if (intKey4 != null) 'int_key4': intKey4,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SocketTxEventsCompanion copyWith(
      {Value<String>? uuid,
      Value<String>? type,
      Value<String>? jsonContent,
      Value<DateTime>? timeRecorded,
      Value<DateTime>? expires,
      Value<DateTime?>? dateKey0,
      Value<DateTime?>? dateKey1,
      Value<DateTime?>? dateKey2,
      Value<DateTime?>? dateKey3,
      Value<DateTime?>? dateKey4,
      Value<String?>? textKey0,
      Value<String?>? textKey1,
      Value<String?>? textKey2,
      Value<String?>? textKey3,
      Value<String?>? textKey4,
      Value<double?>? realKey0,
      Value<double?>? realKey1,
      Value<double?>? realKey2,
      Value<double?>? realKey3,
      Value<double?>? realKey4,
      Value<int?>? intKey0,
      Value<int?>? intKey1,
      Value<int?>? intKey2,
      Value<int?>? intKey3,
      Value<int?>? intKey4,
      Value<int>? rowid}) {
    return SocketTxEventsCompanion(
      uuid: uuid ?? this.uuid,
      type: type ?? this.type,
      jsonContent: jsonContent ?? this.jsonContent,
      timeRecorded: timeRecorded ?? this.timeRecorded,
      expires: expires ?? this.expires,
      dateKey0: dateKey0 ?? this.dateKey0,
      dateKey1: dateKey1 ?? this.dateKey1,
      dateKey2: dateKey2 ?? this.dateKey2,
      dateKey3: dateKey3 ?? this.dateKey3,
      dateKey4: dateKey4 ?? this.dateKey4,
      textKey0: textKey0 ?? this.textKey0,
      textKey1: textKey1 ?? this.textKey1,
      textKey2: textKey2 ?? this.textKey2,
      textKey3: textKey3 ?? this.textKey3,
      textKey4: textKey4 ?? this.textKey4,
      realKey0: realKey0 ?? this.realKey0,
      realKey1: realKey1 ?? this.realKey1,
      realKey2: realKey2 ?? this.realKey2,
      realKey3: realKey3 ?? this.realKey3,
      realKey4: realKey4 ?? this.realKey4,
      intKey0: intKey0 ?? this.intKey0,
      intKey1: intKey1 ?? this.intKey1,
      intKey2: intKey2 ?? this.intKey2,
      intKey3: intKey3 ?? this.intKey3,
      intKey4: intKey4 ?? this.intKey4,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (jsonContent.present) {
      map['json_content'] = Variable<String>(jsonContent.value);
    }
    if (timeRecorded.present) {
      map['time_recorded'] = Variable<DateTime>(timeRecorded.value);
    }
    if (expires.present) {
      map['expires'] = Variable<DateTime>(expires.value);
    }
    if (dateKey0.present) {
      map['date_key0'] = Variable<DateTime>(dateKey0.value);
    }
    if (dateKey1.present) {
      map['date_key1'] = Variable<DateTime>(dateKey1.value);
    }
    if (dateKey2.present) {
      map['date_key2'] = Variable<DateTime>(dateKey2.value);
    }
    if (dateKey3.present) {
      map['date_key3'] = Variable<DateTime>(dateKey3.value);
    }
    if (dateKey4.present) {
      map['date_key4'] = Variable<DateTime>(dateKey4.value);
    }
    if (textKey0.present) {
      map['text_key0'] = Variable<String>(textKey0.value);
    }
    if (textKey1.present) {
      map['text_key1'] = Variable<String>(textKey1.value);
    }
    if (textKey2.present) {
      map['text_key2'] = Variable<String>(textKey2.value);
    }
    if (textKey3.present) {
      map['text_key3'] = Variable<String>(textKey3.value);
    }
    if (textKey4.present) {
      map['text_key4'] = Variable<String>(textKey4.value);
    }
    if (realKey0.present) {
      map['real_key0'] = Variable<double>(realKey0.value);
    }
    if (realKey1.present) {
      map['real_key1'] = Variable<double>(realKey1.value);
    }
    if (realKey2.present) {
      map['real_key2'] = Variable<double>(realKey2.value);
    }
    if (realKey3.present) {
      map['real_key3'] = Variable<double>(realKey3.value);
    }
    if (realKey4.present) {
      map['real_key4'] = Variable<double>(realKey4.value);
    }
    if (intKey0.present) {
      map['int_key0'] = Variable<int>(intKey0.value);
    }
    if (intKey1.present) {
      map['int_key1'] = Variable<int>(intKey1.value);
    }
    if (intKey2.present) {
      map['int_key2'] = Variable<int>(intKey2.value);
    }
    if (intKey3.present) {
      map['int_key3'] = Variable<int>(intKey3.value);
    }
    if (intKey4.present) {
      map['int_key4'] = Variable<int>(intKey4.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SocketTxEventsCompanion(')
          ..write('uuid: $uuid, ')
          ..write('type: $type, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('expires: $expires, ')
          ..write('dateKey0: $dateKey0, ')
          ..write('dateKey1: $dateKey1, ')
          ..write('dateKey2: $dateKey2, ')
          ..write('dateKey3: $dateKey3, ')
          ..write('dateKey4: $dateKey4, ')
          ..write('textKey0: $textKey0, ')
          ..write('textKey1: $textKey1, ')
          ..write('textKey2: $textKey2, ')
          ..write('textKey3: $textKey3, ')
          ..write('textKey4: $textKey4, ')
          ..write('realKey0: $realKey0, ')
          ..write('realKey1: $realKey1, ')
          ..write('realKey2: $realKey2, ')
          ..write('realKey3: $realKey3, ')
          ..write('realKey4: $realKey4, ')
          ..write('intKey0: $intKey0, ')
          ..write('intKey1: $intKey1, ')
          ..write('intKey2: $intKey2, ')
          ..write('intKey3: $intKey3, ')
          ..write('intKey4: $intKey4, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SocketRxEventsTable extends SocketRxEvents
    with TableInfo<$SocketRxEventsTable, SocketRxEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SocketRxEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _jsonContentMeta =
      const VerificationMeta('jsonContent');
  @override
  late final GeneratedColumn<String> jsonContent = GeneratedColumn<String>(
      'json_content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _onlineMeta = const VerificationMeta('online');
  @override
  late final GeneratedColumn<bool> online = GeneratedColumn<bool>(
      'online', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("online" IN (0, 1))'));
  static const VerificationMeta _timeRecordedMeta =
      const VerificationMeta('timeRecorded');
  @override
  late final GeneratedColumn<DateTime> timeRecorded = GeneratedColumn<DateTime>(
      'time_recorded', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  static const VerificationMeta _timeReceivedMeta =
      const VerificationMeta('timeReceived');
  @override
  late final GeneratedColumn<DateTime> timeReceived = GeneratedColumn<DateTime>(
      'time_received', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _expiresMeta =
      const VerificationMeta('expires');
  @override
  late final GeneratedColumn<DateTime> expires = GeneratedColumn<DateTime>(
      'expires', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _dateKey0Meta =
      const VerificationMeta('dateKey0');
  @override
  late final GeneratedColumn<DateTime> dateKey0 = GeneratedColumn<DateTime>(
      'date_key0', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dateKey1Meta =
      const VerificationMeta('dateKey1');
  @override
  late final GeneratedColumn<DateTime> dateKey1 = GeneratedColumn<DateTime>(
      'date_key1', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dateKey2Meta =
      const VerificationMeta('dateKey2');
  @override
  late final GeneratedColumn<DateTime> dateKey2 = GeneratedColumn<DateTime>(
      'date_key2', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dateKey3Meta =
      const VerificationMeta('dateKey3');
  @override
  late final GeneratedColumn<DateTime> dateKey3 = GeneratedColumn<DateTime>(
      'date_key3', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _dateKey4Meta =
      const VerificationMeta('dateKey4');
  @override
  late final GeneratedColumn<DateTime> dateKey4 = GeneratedColumn<DateTime>(
      'date_key4', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _textKey0Meta =
      const VerificationMeta('textKey0');
  @override
  late final GeneratedColumn<String> textKey0 = GeneratedColumn<String>(
      'text_key0', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _textKey1Meta =
      const VerificationMeta('textKey1');
  @override
  late final GeneratedColumn<String> textKey1 = GeneratedColumn<String>(
      'text_key1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _textKey2Meta =
      const VerificationMeta('textKey2');
  @override
  late final GeneratedColumn<String> textKey2 = GeneratedColumn<String>(
      'text_key2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _textKey3Meta =
      const VerificationMeta('textKey3');
  @override
  late final GeneratedColumn<String> textKey3 = GeneratedColumn<String>(
      'text_key3', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _textKey4Meta =
      const VerificationMeta('textKey4');
  @override
  late final GeneratedColumn<String> textKey4 = GeneratedColumn<String>(
      'text_key4', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _realKey0Meta =
      const VerificationMeta('realKey0');
  @override
  late final GeneratedColumn<double> realKey0 = GeneratedColumn<double>(
      'real_key0', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _realKey1Meta =
      const VerificationMeta('realKey1');
  @override
  late final GeneratedColumn<double> realKey1 = GeneratedColumn<double>(
      'real_key1', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _realKey2Meta =
      const VerificationMeta('realKey2');
  @override
  late final GeneratedColumn<double> realKey2 = GeneratedColumn<double>(
      'real_key2', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _realKey3Meta =
      const VerificationMeta('realKey3');
  @override
  late final GeneratedColumn<double> realKey3 = GeneratedColumn<double>(
      'real_key3', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _realKey4Meta =
      const VerificationMeta('realKey4');
  @override
  late final GeneratedColumn<double> realKey4 = GeneratedColumn<double>(
      'real_key4', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _intKey0Meta =
      const VerificationMeta('intKey0');
  @override
  late final GeneratedColumn<int> intKey0 = GeneratedColumn<int>(
      'int_key0', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intKey1Meta =
      const VerificationMeta('intKey1');
  @override
  late final GeneratedColumn<int> intKey1 = GeneratedColumn<int>(
      'int_key1', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intKey2Meta =
      const VerificationMeta('intKey2');
  @override
  late final GeneratedColumn<int> intKey2 = GeneratedColumn<int>(
      'int_key2', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intKey3Meta =
      const VerificationMeta('intKey3');
  @override
  late final GeneratedColumn<int> intKey3 = GeneratedColumn<int>(
      'int_key3', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intKey4Meta =
      const VerificationMeta('intKey4');
  @override
  late final GeneratedColumn<int> intKey4 = GeneratedColumn<int>(
      'int_key4', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        uuid,
        type,
        jsonContent,
        online,
        timeRecorded,
        timeReceived,
        expires,
        dateKey0,
        dateKey1,
        dateKey2,
        dateKey3,
        dateKey4,
        textKey0,
        textKey1,
        textKey2,
        textKey3,
        textKey4,
        realKey0,
        realKey1,
        realKey2,
        realKey3,
        realKey4,
        intKey0,
        intKey1,
        intKey2,
        intKey3,
        intKey4
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'socket_rx_events';
  @override
  VerificationContext validateIntegrity(Insertable<SocketRxEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('json_content')) {
      context.handle(
          _jsonContentMeta,
          jsonContent.isAcceptableOrUnknown(
              data['json_content']!, _jsonContentMeta));
    } else if (isInserting) {
      context.missing(_jsonContentMeta);
    }
    if (data.containsKey('online')) {
      context.handle(_onlineMeta,
          online.isAcceptableOrUnknown(data['online']!, _onlineMeta));
    } else if (isInserting) {
      context.missing(_onlineMeta);
    }
    if (data.containsKey('time_recorded')) {
      context.handle(
          _timeRecordedMeta,
          timeRecorded.isAcceptableOrUnknown(
              data['time_recorded']!, _timeRecordedMeta));
    }
    if (data.containsKey('time_received')) {
      context.handle(
          _timeReceivedMeta,
          timeReceived.isAcceptableOrUnknown(
              data['time_received']!, _timeReceivedMeta));
    } else if (isInserting) {
      context.missing(_timeReceivedMeta);
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires']!, _expiresMeta));
    } else if (isInserting) {
      context.missing(_expiresMeta);
    }
    if (data.containsKey('date_key0')) {
      context.handle(_dateKey0Meta,
          dateKey0.isAcceptableOrUnknown(data['date_key0']!, _dateKey0Meta));
    }
    if (data.containsKey('date_key1')) {
      context.handle(_dateKey1Meta,
          dateKey1.isAcceptableOrUnknown(data['date_key1']!, _dateKey1Meta));
    }
    if (data.containsKey('date_key2')) {
      context.handle(_dateKey2Meta,
          dateKey2.isAcceptableOrUnknown(data['date_key2']!, _dateKey2Meta));
    }
    if (data.containsKey('date_key3')) {
      context.handle(_dateKey3Meta,
          dateKey3.isAcceptableOrUnknown(data['date_key3']!, _dateKey3Meta));
    }
    if (data.containsKey('date_key4')) {
      context.handle(_dateKey4Meta,
          dateKey4.isAcceptableOrUnknown(data['date_key4']!, _dateKey4Meta));
    }
    if (data.containsKey('text_key0')) {
      context.handle(_textKey0Meta,
          textKey0.isAcceptableOrUnknown(data['text_key0']!, _textKey0Meta));
    }
    if (data.containsKey('text_key1')) {
      context.handle(_textKey1Meta,
          textKey1.isAcceptableOrUnknown(data['text_key1']!, _textKey1Meta));
    }
    if (data.containsKey('text_key2')) {
      context.handle(_textKey2Meta,
          textKey2.isAcceptableOrUnknown(data['text_key2']!, _textKey2Meta));
    }
    if (data.containsKey('text_key3')) {
      context.handle(_textKey3Meta,
          textKey3.isAcceptableOrUnknown(data['text_key3']!, _textKey3Meta));
    }
    if (data.containsKey('text_key4')) {
      context.handle(_textKey4Meta,
          textKey4.isAcceptableOrUnknown(data['text_key4']!, _textKey4Meta));
    }
    if (data.containsKey('real_key0')) {
      context.handle(_realKey0Meta,
          realKey0.isAcceptableOrUnknown(data['real_key0']!, _realKey0Meta));
    }
    if (data.containsKey('real_key1')) {
      context.handle(_realKey1Meta,
          realKey1.isAcceptableOrUnknown(data['real_key1']!, _realKey1Meta));
    }
    if (data.containsKey('real_key2')) {
      context.handle(_realKey2Meta,
          realKey2.isAcceptableOrUnknown(data['real_key2']!, _realKey2Meta));
    }
    if (data.containsKey('real_key3')) {
      context.handle(_realKey3Meta,
          realKey3.isAcceptableOrUnknown(data['real_key3']!, _realKey3Meta));
    }
    if (data.containsKey('real_key4')) {
      context.handle(_realKey4Meta,
          realKey4.isAcceptableOrUnknown(data['real_key4']!, _realKey4Meta));
    }
    if (data.containsKey('int_key0')) {
      context.handle(_intKey0Meta,
          intKey0.isAcceptableOrUnknown(data['int_key0']!, _intKey0Meta));
    }
    if (data.containsKey('int_key1')) {
      context.handle(_intKey1Meta,
          intKey1.isAcceptableOrUnknown(data['int_key1']!, _intKey1Meta));
    }
    if (data.containsKey('int_key2')) {
      context.handle(_intKey2Meta,
          intKey2.isAcceptableOrUnknown(data['int_key2']!, _intKey2Meta));
    }
    if (data.containsKey('int_key3')) {
      context.handle(_intKey3Meta,
          intKey3.isAcceptableOrUnknown(data['int_key3']!, _intKey3Meta));
    }
    if (data.containsKey('int_key4')) {
      context.handle(_intKey4Meta,
          intKey4.isAcceptableOrUnknown(data['int_key4']!, _intKey4Meta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  SocketRxEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SocketRxEvent(
      uuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      jsonContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}json_content'])!,
      online: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}online'])!,
      timeRecorded: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}time_recorded'])!,
      timeReceived: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}time_received'])!,
      expires: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expires'])!,
      dateKey0: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key0']),
      dateKey1: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key1']),
      dateKey2: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key2']),
      dateKey3: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key3']),
      dateKey4: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_key4']),
      textKey0: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key0']),
      textKey1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key1']),
      textKey2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key2']),
      textKey3: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key3']),
      textKey4: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_key4']),
      realKey0: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key0']),
      realKey1: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key1']),
      realKey2: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key2']),
      realKey3: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key3']),
      realKey4: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}real_key4']),
      intKey0: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key0']),
      intKey1: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key1']),
      intKey2: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key2']),
      intKey3: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key3']),
      intKey4: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}int_key4']),
    );
  }

  @override
  $SocketRxEventsTable createAlias(String alias) {
    return $SocketRxEventsTable(attachedDatabase, alias);
  }
}

class SocketRxEvent extends DataClass implements Insertable<SocketRxEvent> {
  final String uuid;
  final String type;
  final String jsonContent;
  final bool online;
  final DateTime timeRecorded;
  final DateTime timeReceived;
  final DateTime expires;
  final DateTime? dateKey0;
  final DateTime? dateKey1;
  final DateTime? dateKey2;
  final DateTime? dateKey3;
  final DateTime? dateKey4;
  final String? textKey0;
  final String? textKey1;
  final String? textKey2;
  final String? textKey3;
  final String? textKey4;
  final double? realKey0;
  final double? realKey1;
  final double? realKey2;
  final double? realKey3;
  final double? realKey4;
  final int? intKey0;
  final int? intKey1;
  final int? intKey2;
  final int? intKey3;
  final int? intKey4;
  const SocketRxEvent(
      {required this.uuid,
      required this.type,
      required this.jsonContent,
      required this.online,
      required this.timeRecorded,
      required this.timeReceived,
      required this.expires,
      this.dateKey0,
      this.dateKey1,
      this.dateKey2,
      this.dateKey3,
      this.dateKey4,
      this.textKey0,
      this.textKey1,
      this.textKey2,
      this.textKey3,
      this.textKey4,
      this.realKey0,
      this.realKey1,
      this.realKey2,
      this.realKey3,
      this.realKey4,
      this.intKey0,
      this.intKey1,
      this.intKey2,
      this.intKey3,
      this.intKey4});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['type'] = Variable<String>(type);
    map['json_content'] = Variable<String>(jsonContent);
    map['online'] = Variable<bool>(online);
    map['time_recorded'] = Variable<DateTime>(timeRecorded);
    map['time_received'] = Variable<DateTime>(timeReceived);
    map['expires'] = Variable<DateTime>(expires);
    if (!nullToAbsent || dateKey0 != null) {
      map['date_key0'] = Variable<DateTime>(dateKey0);
    }
    if (!nullToAbsent || dateKey1 != null) {
      map['date_key1'] = Variable<DateTime>(dateKey1);
    }
    if (!nullToAbsent || dateKey2 != null) {
      map['date_key2'] = Variable<DateTime>(dateKey2);
    }
    if (!nullToAbsent || dateKey3 != null) {
      map['date_key3'] = Variable<DateTime>(dateKey3);
    }
    if (!nullToAbsent || dateKey4 != null) {
      map['date_key4'] = Variable<DateTime>(dateKey4);
    }
    if (!nullToAbsent || textKey0 != null) {
      map['text_key0'] = Variable<String>(textKey0);
    }
    if (!nullToAbsent || textKey1 != null) {
      map['text_key1'] = Variable<String>(textKey1);
    }
    if (!nullToAbsent || textKey2 != null) {
      map['text_key2'] = Variable<String>(textKey2);
    }
    if (!nullToAbsent || textKey3 != null) {
      map['text_key3'] = Variable<String>(textKey3);
    }
    if (!nullToAbsent || textKey4 != null) {
      map['text_key4'] = Variable<String>(textKey4);
    }
    if (!nullToAbsent || realKey0 != null) {
      map['real_key0'] = Variable<double>(realKey0);
    }
    if (!nullToAbsent || realKey1 != null) {
      map['real_key1'] = Variable<double>(realKey1);
    }
    if (!nullToAbsent || realKey2 != null) {
      map['real_key2'] = Variable<double>(realKey2);
    }
    if (!nullToAbsent || realKey3 != null) {
      map['real_key3'] = Variable<double>(realKey3);
    }
    if (!nullToAbsent || realKey4 != null) {
      map['real_key4'] = Variable<double>(realKey4);
    }
    if (!nullToAbsent || intKey0 != null) {
      map['int_key0'] = Variable<int>(intKey0);
    }
    if (!nullToAbsent || intKey1 != null) {
      map['int_key1'] = Variable<int>(intKey1);
    }
    if (!nullToAbsent || intKey2 != null) {
      map['int_key2'] = Variable<int>(intKey2);
    }
    if (!nullToAbsent || intKey3 != null) {
      map['int_key3'] = Variable<int>(intKey3);
    }
    if (!nullToAbsent || intKey4 != null) {
      map['int_key4'] = Variable<int>(intKey4);
    }
    return map;
  }

  SocketRxEventsCompanion toCompanion(bool nullToAbsent) {
    return SocketRxEventsCompanion(
      uuid: Value(uuid),
      type: Value(type),
      jsonContent: Value(jsonContent),
      online: Value(online),
      timeRecorded: Value(timeRecorded),
      timeReceived: Value(timeReceived),
      expires: Value(expires),
      dateKey0: dateKey0 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey0),
      dateKey1: dateKey1 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey1),
      dateKey2: dateKey2 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey2),
      dateKey3: dateKey3 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey3),
      dateKey4: dateKey4 == null && nullToAbsent
          ? const Value.absent()
          : Value(dateKey4),
      textKey0: textKey0 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey0),
      textKey1: textKey1 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey1),
      textKey2: textKey2 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey2),
      textKey3: textKey3 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey3),
      textKey4: textKey4 == null && nullToAbsent
          ? const Value.absent()
          : Value(textKey4),
      realKey0: realKey0 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey0),
      realKey1: realKey1 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey1),
      realKey2: realKey2 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey2),
      realKey3: realKey3 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey3),
      realKey4: realKey4 == null && nullToAbsent
          ? const Value.absent()
          : Value(realKey4),
      intKey0: intKey0 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey0),
      intKey1: intKey1 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey1),
      intKey2: intKey2 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey2),
      intKey3: intKey3 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey3),
      intKey4: intKey4 == null && nullToAbsent
          ? const Value.absent()
          : Value(intKey4),
    );
  }

  factory SocketRxEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SocketRxEvent(
      uuid: serializer.fromJson<String>(json['uuid']),
      type: serializer.fromJson<String>(json['type']),
      jsonContent: serializer.fromJson<String>(json['jsonContent']),
      online: serializer.fromJson<bool>(json['online']),
      timeRecorded: serializer.fromJson<DateTime>(json['timeRecorded']),
      timeReceived: serializer.fromJson<DateTime>(json['timeReceived']),
      expires: serializer.fromJson<DateTime>(json['expires']),
      dateKey0: serializer.fromJson<DateTime?>(json['dateKey0']),
      dateKey1: serializer.fromJson<DateTime?>(json['dateKey1']),
      dateKey2: serializer.fromJson<DateTime?>(json['dateKey2']),
      dateKey3: serializer.fromJson<DateTime?>(json['dateKey3']),
      dateKey4: serializer.fromJson<DateTime?>(json['dateKey4']),
      textKey0: serializer.fromJson<String?>(json['textKey0']),
      textKey1: serializer.fromJson<String?>(json['textKey1']),
      textKey2: serializer.fromJson<String?>(json['textKey2']),
      textKey3: serializer.fromJson<String?>(json['textKey3']),
      textKey4: serializer.fromJson<String?>(json['textKey4']),
      realKey0: serializer.fromJson<double?>(json['realKey0']),
      realKey1: serializer.fromJson<double?>(json['realKey1']),
      realKey2: serializer.fromJson<double?>(json['realKey2']),
      realKey3: serializer.fromJson<double?>(json['realKey3']),
      realKey4: serializer.fromJson<double?>(json['realKey4']),
      intKey0: serializer.fromJson<int?>(json['intKey0']),
      intKey1: serializer.fromJson<int?>(json['intKey1']),
      intKey2: serializer.fromJson<int?>(json['intKey2']),
      intKey3: serializer.fromJson<int?>(json['intKey3']),
      intKey4: serializer.fromJson<int?>(json['intKey4']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'type': serializer.toJson<String>(type),
      'jsonContent': serializer.toJson<String>(jsonContent),
      'online': serializer.toJson<bool>(online),
      'timeRecorded': serializer.toJson<DateTime>(timeRecorded),
      'timeReceived': serializer.toJson<DateTime>(timeReceived),
      'expires': serializer.toJson<DateTime>(expires),
      'dateKey0': serializer.toJson<DateTime?>(dateKey0),
      'dateKey1': serializer.toJson<DateTime?>(dateKey1),
      'dateKey2': serializer.toJson<DateTime?>(dateKey2),
      'dateKey3': serializer.toJson<DateTime?>(dateKey3),
      'dateKey4': serializer.toJson<DateTime?>(dateKey4),
      'textKey0': serializer.toJson<String?>(textKey0),
      'textKey1': serializer.toJson<String?>(textKey1),
      'textKey2': serializer.toJson<String?>(textKey2),
      'textKey3': serializer.toJson<String?>(textKey3),
      'textKey4': serializer.toJson<String?>(textKey4),
      'realKey0': serializer.toJson<double?>(realKey0),
      'realKey1': serializer.toJson<double?>(realKey1),
      'realKey2': serializer.toJson<double?>(realKey2),
      'realKey3': serializer.toJson<double?>(realKey3),
      'realKey4': serializer.toJson<double?>(realKey4),
      'intKey0': serializer.toJson<int?>(intKey0),
      'intKey1': serializer.toJson<int?>(intKey1),
      'intKey2': serializer.toJson<int?>(intKey2),
      'intKey3': serializer.toJson<int?>(intKey3),
      'intKey4': serializer.toJson<int?>(intKey4),
    };
  }

  SocketRxEvent copyWith(
          {String? uuid,
          String? type,
          String? jsonContent,
          bool? online,
          DateTime? timeRecorded,
          DateTime? timeReceived,
          DateTime? expires,
          Value<DateTime?> dateKey0 = const Value.absent(),
          Value<DateTime?> dateKey1 = const Value.absent(),
          Value<DateTime?> dateKey2 = const Value.absent(),
          Value<DateTime?> dateKey3 = const Value.absent(),
          Value<DateTime?> dateKey4 = const Value.absent(),
          Value<String?> textKey0 = const Value.absent(),
          Value<String?> textKey1 = const Value.absent(),
          Value<String?> textKey2 = const Value.absent(),
          Value<String?> textKey3 = const Value.absent(),
          Value<String?> textKey4 = const Value.absent(),
          Value<double?> realKey0 = const Value.absent(),
          Value<double?> realKey1 = const Value.absent(),
          Value<double?> realKey2 = const Value.absent(),
          Value<double?> realKey3 = const Value.absent(),
          Value<double?> realKey4 = const Value.absent(),
          Value<int?> intKey0 = const Value.absent(),
          Value<int?> intKey1 = const Value.absent(),
          Value<int?> intKey2 = const Value.absent(),
          Value<int?> intKey3 = const Value.absent(),
          Value<int?> intKey4 = const Value.absent()}) =>
      SocketRxEvent(
        uuid: uuid ?? this.uuid,
        type: type ?? this.type,
        jsonContent: jsonContent ?? this.jsonContent,
        online: online ?? this.online,
        timeRecorded: timeRecorded ?? this.timeRecorded,
        timeReceived: timeReceived ?? this.timeReceived,
        expires: expires ?? this.expires,
        dateKey0: dateKey0.present ? dateKey0.value : this.dateKey0,
        dateKey1: dateKey1.present ? dateKey1.value : this.dateKey1,
        dateKey2: dateKey2.present ? dateKey2.value : this.dateKey2,
        dateKey3: dateKey3.present ? dateKey3.value : this.dateKey3,
        dateKey4: dateKey4.present ? dateKey4.value : this.dateKey4,
        textKey0: textKey0.present ? textKey0.value : this.textKey0,
        textKey1: textKey1.present ? textKey1.value : this.textKey1,
        textKey2: textKey2.present ? textKey2.value : this.textKey2,
        textKey3: textKey3.present ? textKey3.value : this.textKey3,
        textKey4: textKey4.present ? textKey4.value : this.textKey4,
        realKey0: realKey0.present ? realKey0.value : this.realKey0,
        realKey1: realKey1.present ? realKey1.value : this.realKey1,
        realKey2: realKey2.present ? realKey2.value : this.realKey2,
        realKey3: realKey3.present ? realKey3.value : this.realKey3,
        realKey4: realKey4.present ? realKey4.value : this.realKey4,
        intKey0: intKey0.present ? intKey0.value : this.intKey0,
        intKey1: intKey1.present ? intKey1.value : this.intKey1,
        intKey2: intKey2.present ? intKey2.value : this.intKey2,
        intKey3: intKey3.present ? intKey3.value : this.intKey3,
        intKey4: intKey4.present ? intKey4.value : this.intKey4,
      );
  @override
  String toString() {
    return (StringBuffer('SocketRxEvent(')
          ..write('uuid: $uuid, ')
          ..write('type: $type, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('online: $online, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('timeReceived: $timeReceived, ')
          ..write('expires: $expires, ')
          ..write('dateKey0: $dateKey0, ')
          ..write('dateKey1: $dateKey1, ')
          ..write('dateKey2: $dateKey2, ')
          ..write('dateKey3: $dateKey3, ')
          ..write('dateKey4: $dateKey4, ')
          ..write('textKey0: $textKey0, ')
          ..write('textKey1: $textKey1, ')
          ..write('textKey2: $textKey2, ')
          ..write('textKey3: $textKey3, ')
          ..write('textKey4: $textKey4, ')
          ..write('realKey0: $realKey0, ')
          ..write('realKey1: $realKey1, ')
          ..write('realKey2: $realKey2, ')
          ..write('realKey3: $realKey3, ')
          ..write('realKey4: $realKey4, ')
          ..write('intKey0: $intKey0, ')
          ..write('intKey1: $intKey1, ')
          ..write('intKey2: $intKey2, ')
          ..write('intKey3: $intKey3, ')
          ..write('intKey4: $intKey4')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        uuid,
        type,
        jsonContent,
        online,
        timeRecorded,
        timeReceived,
        expires,
        dateKey0,
        dateKey1,
        dateKey2,
        dateKey3,
        dateKey4,
        textKey0,
        textKey1,
        textKey2,
        textKey3,
        textKey4,
        realKey0,
        realKey1,
        realKey2,
        realKey3,
        realKey4,
        intKey0,
        intKey1,
        intKey2,
        intKey3,
        intKey4
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SocketRxEvent &&
          other.uuid == this.uuid &&
          other.type == this.type &&
          other.jsonContent == this.jsonContent &&
          other.online == this.online &&
          other.timeRecorded == this.timeRecorded &&
          other.timeReceived == this.timeReceived &&
          other.expires == this.expires &&
          other.dateKey0 == this.dateKey0 &&
          other.dateKey1 == this.dateKey1 &&
          other.dateKey2 == this.dateKey2 &&
          other.dateKey3 == this.dateKey3 &&
          other.dateKey4 == this.dateKey4 &&
          other.textKey0 == this.textKey0 &&
          other.textKey1 == this.textKey1 &&
          other.textKey2 == this.textKey2 &&
          other.textKey3 == this.textKey3 &&
          other.textKey4 == this.textKey4 &&
          other.realKey0 == this.realKey0 &&
          other.realKey1 == this.realKey1 &&
          other.realKey2 == this.realKey2 &&
          other.realKey3 == this.realKey3 &&
          other.realKey4 == this.realKey4 &&
          other.intKey0 == this.intKey0 &&
          other.intKey1 == this.intKey1 &&
          other.intKey2 == this.intKey2 &&
          other.intKey3 == this.intKey3 &&
          other.intKey4 == this.intKey4);
}

class SocketRxEventsCompanion extends UpdateCompanion<SocketRxEvent> {
  final Value<String> uuid;
  final Value<String> type;
  final Value<String> jsonContent;
  final Value<bool> online;
  final Value<DateTime> timeRecorded;
  final Value<DateTime> timeReceived;
  final Value<DateTime> expires;
  final Value<DateTime?> dateKey0;
  final Value<DateTime?> dateKey1;
  final Value<DateTime?> dateKey2;
  final Value<DateTime?> dateKey3;
  final Value<DateTime?> dateKey4;
  final Value<String?> textKey0;
  final Value<String?> textKey1;
  final Value<String?> textKey2;
  final Value<String?> textKey3;
  final Value<String?> textKey4;
  final Value<double?> realKey0;
  final Value<double?> realKey1;
  final Value<double?> realKey2;
  final Value<double?> realKey3;
  final Value<double?> realKey4;
  final Value<int?> intKey0;
  final Value<int?> intKey1;
  final Value<int?> intKey2;
  final Value<int?> intKey3;
  final Value<int?> intKey4;
  final Value<int> rowid;
  const SocketRxEventsCompanion({
    this.uuid = const Value.absent(),
    this.type = const Value.absent(),
    this.jsonContent = const Value.absent(),
    this.online = const Value.absent(),
    this.timeRecorded = const Value.absent(),
    this.timeReceived = const Value.absent(),
    this.expires = const Value.absent(),
    this.dateKey0 = const Value.absent(),
    this.dateKey1 = const Value.absent(),
    this.dateKey2 = const Value.absent(),
    this.dateKey3 = const Value.absent(),
    this.dateKey4 = const Value.absent(),
    this.textKey0 = const Value.absent(),
    this.textKey1 = const Value.absent(),
    this.textKey2 = const Value.absent(),
    this.textKey3 = const Value.absent(),
    this.textKey4 = const Value.absent(),
    this.realKey0 = const Value.absent(),
    this.realKey1 = const Value.absent(),
    this.realKey2 = const Value.absent(),
    this.realKey3 = const Value.absent(),
    this.realKey4 = const Value.absent(),
    this.intKey0 = const Value.absent(),
    this.intKey1 = const Value.absent(),
    this.intKey2 = const Value.absent(),
    this.intKey3 = const Value.absent(),
    this.intKey4 = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SocketRxEventsCompanion.insert({
    required String uuid,
    required String type,
    required String jsonContent,
    required bool online,
    this.timeRecorded = const Value.absent(),
    required DateTime timeReceived,
    required DateTime expires,
    this.dateKey0 = const Value.absent(),
    this.dateKey1 = const Value.absent(),
    this.dateKey2 = const Value.absent(),
    this.dateKey3 = const Value.absent(),
    this.dateKey4 = const Value.absent(),
    this.textKey0 = const Value.absent(),
    this.textKey1 = const Value.absent(),
    this.textKey2 = const Value.absent(),
    this.textKey3 = const Value.absent(),
    this.textKey4 = const Value.absent(),
    this.realKey0 = const Value.absent(),
    this.realKey1 = const Value.absent(),
    this.realKey2 = const Value.absent(),
    this.realKey3 = const Value.absent(),
    this.realKey4 = const Value.absent(),
    this.intKey0 = const Value.absent(),
    this.intKey1 = const Value.absent(),
    this.intKey2 = const Value.absent(),
    this.intKey3 = const Value.absent(),
    this.intKey4 = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : uuid = Value(uuid),
        type = Value(type),
        jsonContent = Value(jsonContent),
        online = Value(online),
        timeReceived = Value(timeReceived),
        expires = Value(expires);
  static Insertable<SocketRxEvent> custom({
    Expression<String>? uuid,
    Expression<String>? type,
    Expression<String>? jsonContent,
    Expression<bool>? online,
    Expression<DateTime>? timeRecorded,
    Expression<DateTime>? timeReceived,
    Expression<DateTime>? expires,
    Expression<DateTime>? dateKey0,
    Expression<DateTime>? dateKey1,
    Expression<DateTime>? dateKey2,
    Expression<DateTime>? dateKey3,
    Expression<DateTime>? dateKey4,
    Expression<String>? textKey0,
    Expression<String>? textKey1,
    Expression<String>? textKey2,
    Expression<String>? textKey3,
    Expression<String>? textKey4,
    Expression<double>? realKey0,
    Expression<double>? realKey1,
    Expression<double>? realKey2,
    Expression<double>? realKey3,
    Expression<double>? realKey4,
    Expression<int>? intKey0,
    Expression<int>? intKey1,
    Expression<int>? intKey2,
    Expression<int>? intKey3,
    Expression<int>? intKey4,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (type != null) 'type': type,
      if (jsonContent != null) 'json_content': jsonContent,
      if (online != null) 'online': online,
      if (timeRecorded != null) 'time_recorded': timeRecorded,
      if (timeReceived != null) 'time_received': timeReceived,
      if (expires != null) 'expires': expires,
      if (dateKey0 != null) 'date_key0': dateKey0,
      if (dateKey1 != null) 'date_key1': dateKey1,
      if (dateKey2 != null) 'date_key2': dateKey2,
      if (dateKey3 != null) 'date_key3': dateKey3,
      if (dateKey4 != null) 'date_key4': dateKey4,
      if (textKey0 != null) 'text_key0': textKey0,
      if (textKey1 != null) 'text_key1': textKey1,
      if (textKey2 != null) 'text_key2': textKey2,
      if (textKey3 != null) 'text_key3': textKey3,
      if (textKey4 != null) 'text_key4': textKey4,
      if (realKey0 != null) 'real_key0': realKey0,
      if (realKey1 != null) 'real_key1': realKey1,
      if (realKey2 != null) 'real_key2': realKey2,
      if (realKey3 != null) 'real_key3': realKey3,
      if (realKey4 != null) 'real_key4': realKey4,
      if (intKey0 != null) 'int_key0': intKey0,
      if (intKey1 != null) 'int_key1': intKey1,
      if (intKey2 != null) 'int_key2': intKey2,
      if (intKey3 != null) 'int_key3': intKey3,
      if (intKey4 != null) 'int_key4': intKey4,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SocketRxEventsCompanion copyWith(
      {Value<String>? uuid,
      Value<String>? type,
      Value<String>? jsonContent,
      Value<bool>? online,
      Value<DateTime>? timeRecorded,
      Value<DateTime>? timeReceived,
      Value<DateTime>? expires,
      Value<DateTime?>? dateKey0,
      Value<DateTime?>? dateKey1,
      Value<DateTime?>? dateKey2,
      Value<DateTime?>? dateKey3,
      Value<DateTime?>? dateKey4,
      Value<String?>? textKey0,
      Value<String?>? textKey1,
      Value<String?>? textKey2,
      Value<String?>? textKey3,
      Value<String?>? textKey4,
      Value<double?>? realKey0,
      Value<double?>? realKey1,
      Value<double?>? realKey2,
      Value<double?>? realKey3,
      Value<double?>? realKey4,
      Value<int?>? intKey0,
      Value<int?>? intKey1,
      Value<int?>? intKey2,
      Value<int?>? intKey3,
      Value<int?>? intKey4,
      Value<int>? rowid}) {
    return SocketRxEventsCompanion(
      uuid: uuid ?? this.uuid,
      type: type ?? this.type,
      jsonContent: jsonContent ?? this.jsonContent,
      online: online ?? this.online,
      timeRecorded: timeRecorded ?? this.timeRecorded,
      timeReceived: timeReceived ?? this.timeReceived,
      expires: expires ?? this.expires,
      dateKey0: dateKey0 ?? this.dateKey0,
      dateKey1: dateKey1 ?? this.dateKey1,
      dateKey2: dateKey2 ?? this.dateKey2,
      dateKey3: dateKey3 ?? this.dateKey3,
      dateKey4: dateKey4 ?? this.dateKey4,
      textKey0: textKey0 ?? this.textKey0,
      textKey1: textKey1 ?? this.textKey1,
      textKey2: textKey2 ?? this.textKey2,
      textKey3: textKey3 ?? this.textKey3,
      textKey4: textKey4 ?? this.textKey4,
      realKey0: realKey0 ?? this.realKey0,
      realKey1: realKey1 ?? this.realKey1,
      realKey2: realKey2 ?? this.realKey2,
      realKey3: realKey3 ?? this.realKey3,
      realKey4: realKey4 ?? this.realKey4,
      intKey0: intKey0 ?? this.intKey0,
      intKey1: intKey1 ?? this.intKey1,
      intKey2: intKey2 ?? this.intKey2,
      intKey3: intKey3 ?? this.intKey3,
      intKey4: intKey4 ?? this.intKey4,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (jsonContent.present) {
      map['json_content'] = Variable<String>(jsonContent.value);
    }
    if (online.present) {
      map['online'] = Variable<bool>(online.value);
    }
    if (timeRecorded.present) {
      map['time_recorded'] = Variable<DateTime>(timeRecorded.value);
    }
    if (timeReceived.present) {
      map['time_received'] = Variable<DateTime>(timeReceived.value);
    }
    if (expires.present) {
      map['expires'] = Variable<DateTime>(expires.value);
    }
    if (dateKey0.present) {
      map['date_key0'] = Variable<DateTime>(dateKey0.value);
    }
    if (dateKey1.present) {
      map['date_key1'] = Variable<DateTime>(dateKey1.value);
    }
    if (dateKey2.present) {
      map['date_key2'] = Variable<DateTime>(dateKey2.value);
    }
    if (dateKey3.present) {
      map['date_key3'] = Variable<DateTime>(dateKey3.value);
    }
    if (dateKey4.present) {
      map['date_key4'] = Variable<DateTime>(dateKey4.value);
    }
    if (textKey0.present) {
      map['text_key0'] = Variable<String>(textKey0.value);
    }
    if (textKey1.present) {
      map['text_key1'] = Variable<String>(textKey1.value);
    }
    if (textKey2.present) {
      map['text_key2'] = Variable<String>(textKey2.value);
    }
    if (textKey3.present) {
      map['text_key3'] = Variable<String>(textKey3.value);
    }
    if (textKey4.present) {
      map['text_key4'] = Variable<String>(textKey4.value);
    }
    if (realKey0.present) {
      map['real_key0'] = Variable<double>(realKey0.value);
    }
    if (realKey1.present) {
      map['real_key1'] = Variable<double>(realKey1.value);
    }
    if (realKey2.present) {
      map['real_key2'] = Variable<double>(realKey2.value);
    }
    if (realKey3.present) {
      map['real_key3'] = Variable<double>(realKey3.value);
    }
    if (realKey4.present) {
      map['real_key4'] = Variable<double>(realKey4.value);
    }
    if (intKey0.present) {
      map['int_key0'] = Variable<int>(intKey0.value);
    }
    if (intKey1.present) {
      map['int_key1'] = Variable<int>(intKey1.value);
    }
    if (intKey2.present) {
      map['int_key2'] = Variable<int>(intKey2.value);
    }
    if (intKey3.present) {
      map['int_key3'] = Variable<int>(intKey3.value);
    }
    if (intKey4.present) {
      map['int_key4'] = Variable<int>(intKey4.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SocketRxEventsCompanion(')
          ..write('uuid: $uuid, ')
          ..write('type: $type, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('online: $online, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('timeReceived: $timeReceived, ')
          ..write('expires: $expires, ')
          ..write('dateKey0: $dateKey0, ')
          ..write('dateKey1: $dateKey1, ')
          ..write('dateKey2: $dateKey2, ')
          ..write('dateKey3: $dateKey3, ')
          ..write('dateKey4: $dateKey4, ')
          ..write('textKey0: $textKey0, ')
          ..write('textKey1: $textKey1, ')
          ..write('textKey2: $textKey2, ')
          ..write('textKey3: $textKey3, ')
          ..write('textKey4: $textKey4, ')
          ..write('realKey0: $realKey0, ')
          ..write('realKey1: $realKey1, ')
          ..write('realKey2: $realKey2, ')
          ..write('realKey3: $realKey3, ')
          ..write('realKey4: $realKey4, ')
          ..write('intKey0: $intKey0, ')
          ..write('intKey1: $intKey1, ')
          ..write('intKey2: $intKey2, ')
          ..write('intKey3: $intKey3, ')
          ..write('intKey4: $intKey4, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $SocketTxEventsTable socketTxEvents = $SocketTxEventsTable(this);
  late final $SocketRxEventsTable socketRxEvents = $SocketRxEventsTable(this);
  late final SocketTxEventDao socketTxEventDao =
      SocketTxEventDao(this as Database);
  late final SocketRxEventDao socketRxEventDao =
      SocketRxEventDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [socketTxEvents, socketRxEvents];
}
