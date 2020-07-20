// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class SocketTxEvent extends DataClass implements Insertable<SocketTxEvent> {
  final int id;
  final String jsonContent;
  final DateTime timeRecorded;
  final DateTime expires;
  SocketTxEvent(
      {@required this.id,
      @required this.jsonContent,
      @required this.timeRecorded,
      this.expires});
  factory SocketTxEvent.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return SocketTxEvent(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      jsonContent: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}json_content']),
      timeRecorded: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}time_recorded']),
      expires: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}expires']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || jsonContent != null) {
      map['json_content'] = Variable<String>(jsonContent);
    }
    if (!nullToAbsent || timeRecorded != null) {
      map['time_recorded'] = Variable<DateTime>(timeRecorded);
    }
    if (!nullToAbsent || expires != null) {
      map['expires'] = Variable<DateTime>(expires);
    }
    return map;
  }

  SocketTxEventsCompanion toCompanion(bool nullToAbsent) {
    return SocketTxEventsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      jsonContent: jsonContent == null && nullToAbsent
          ? const Value.absent()
          : Value(jsonContent),
      timeRecorded: timeRecorded == null && nullToAbsent
          ? const Value.absent()
          : Value(timeRecorded),
      expires: expires == null && nullToAbsent
          ? const Value.absent()
          : Value(expires),
    );
  }

  factory SocketTxEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SocketTxEvent(
      id: serializer.fromJson<int>(json['id']),
      jsonContent: serializer.fromJson<String>(json['jsonContent']),
      timeRecorded: serializer.fromJson<DateTime>(json['timeRecorded']),
      expires: serializer.fromJson<DateTime>(json['expires']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'jsonContent': serializer.toJson<String>(jsonContent),
      'timeRecorded': serializer.toJson<DateTime>(timeRecorded),
      'expires': serializer.toJson<DateTime>(expires),
    };
  }

  SocketTxEvent copyWith(
          {int id,
          String jsonContent,
          DateTime timeRecorded,
          DateTime expires}) =>
      SocketTxEvent(
        id: id ?? this.id,
        jsonContent: jsonContent ?? this.jsonContent,
        timeRecorded: timeRecorded ?? this.timeRecorded,
        expires: expires ?? this.expires,
      );
  @override
  String toString() {
    return (StringBuffer('SocketTxEvent(')
          ..write('id: $id, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(jsonContent.hashCode,
          $mrjc(timeRecorded.hashCode, expires.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SocketTxEvent &&
          other.id == this.id &&
          other.jsonContent == this.jsonContent &&
          other.timeRecorded == this.timeRecorded &&
          other.expires == this.expires);
}

class SocketTxEventsCompanion extends UpdateCompanion<SocketTxEvent> {
  final Value<int> id;
  final Value<String> jsonContent;
  final Value<DateTime> timeRecorded;
  final Value<DateTime> expires;
  const SocketTxEventsCompanion({
    this.id = const Value.absent(),
    this.jsonContent = const Value.absent(),
    this.timeRecorded = const Value.absent(),
    this.expires = const Value.absent(),
  });
  SocketTxEventsCompanion.insert({
    this.id = const Value.absent(),
    @required String jsonContent,
    this.timeRecorded = const Value.absent(),
    this.expires = const Value.absent(),
  }) : jsonContent = Value(jsonContent);
  static Insertable<SocketTxEvent> custom({
    Expression<int> id,
    Expression<String> jsonContent,
    Expression<DateTime> timeRecorded,
    Expression<DateTime> expires,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jsonContent != null) 'json_content': jsonContent,
      if (timeRecorded != null) 'time_recorded': timeRecorded,
      if (expires != null) 'expires': expires,
    });
  }

  SocketTxEventsCompanion copyWith(
      {Value<int> id,
      Value<String> jsonContent,
      Value<DateTime> timeRecorded,
      Value<DateTime> expires}) {
    return SocketTxEventsCompanion(
      id: id ?? this.id,
      jsonContent: jsonContent ?? this.jsonContent,
      timeRecorded: timeRecorded ?? this.timeRecorded,
      expires: expires ?? this.expires,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SocketTxEventsCompanion(')
          ..write('id: $id, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }
}

class $SocketTxEventsTable extends SocketTxEvents
    with TableInfo<$SocketTxEventsTable, SocketTxEvent> {
  final GeneratedDatabase _db;
  final String _alias;
  $SocketTxEventsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _jsonContentMeta =
      const VerificationMeta('jsonContent');
  GeneratedTextColumn _jsonContent;
  @override
  GeneratedTextColumn get jsonContent =>
      _jsonContent ??= _constructJsonContent();
  GeneratedTextColumn _constructJsonContent() {
    return GeneratedTextColumn(
      'json_content',
      $tableName,
      false,
    );
  }

  final VerificationMeta _timeRecordedMeta =
      const VerificationMeta('timeRecorded');
  GeneratedDateTimeColumn _timeRecorded;
  @override
  GeneratedDateTimeColumn get timeRecorded =>
      _timeRecorded ??= _constructTimeRecorded();
  GeneratedDateTimeColumn _constructTimeRecorded() {
    return GeneratedDateTimeColumn(
      'time_recorded',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  final VerificationMeta _expiresMeta = const VerificationMeta('expires');
  GeneratedDateTimeColumn _expires;
  @override
  GeneratedDateTimeColumn get expires => _expires ??= _constructExpires();
  GeneratedDateTimeColumn _constructExpires() {
    return GeneratedDateTimeColumn(
      'expires',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, jsonContent, timeRecorded, expires];
  @override
  $SocketTxEventsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'socket_tx_events';
  @override
  final String actualTableName = 'socket_tx_events';
  @override
  VerificationContext validateIntegrity(Insertable<SocketTxEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('json_content')) {
      context.handle(
          _jsonContentMeta,
          jsonContent.isAcceptableOrUnknown(
              data['json_content'], _jsonContentMeta));
    } else if (isInserting) {
      context.missing(_jsonContentMeta);
    }
    if (data.containsKey('time_recorded')) {
      context.handle(
          _timeRecordedMeta,
          timeRecorded.isAcceptableOrUnknown(
              data['time_recorded'], _timeRecordedMeta));
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires'], _expiresMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SocketTxEvent map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SocketTxEvent.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SocketTxEventsTable createAlias(String alias) {
    return $SocketTxEventsTable(_db, alias);
  }
}

class SocketRxEvent extends DataClass implements Insertable<SocketRxEvent> {
  final String uuid;
  final String jsonContent;
  final DateTime timeRecorded;
  final DateTime expires;
  SocketRxEvent(
      {@required this.uuid,
      @required this.jsonContent,
      @required this.timeRecorded,
      this.expires});
  factory SocketRxEvent.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return SocketRxEvent(
      uuid: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uuid']),
      jsonContent: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}json_content']),
      timeRecorded: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}time_recorded']),
      expires: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}expires']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || uuid != null) {
      map['uuid'] = Variable<String>(uuid);
    }
    if (!nullToAbsent || jsonContent != null) {
      map['json_content'] = Variable<String>(jsonContent);
    }
    if (!nullToAbsent || timeRecorded != null) {
      map['time_recorded'] = Variable<DateTime>(timeRecorded);
    }
    if (!nullToAbsent || expires != null) {
      map['expires'] = Variable<DateTime>(expires);
    }
    return map;
  }

  SocketRxEventsCompanion toCompanion(bool nullToAbsent) {
    return SocketRxEventsCompanion(
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
      jsonContent: jsonContent == null && nullToAbsent
          ? const Value.absent()
          : Value(jsonContent),
      timeRecorded: timeRecorded == null && nullToAbsent
          ? const Value.absent()
          : Value(timeRecorded),
      expires: expires == null && nullToAbsent
          ? const Value.absent()
          : Value(expires),
    );
  }

  factory SocketRxEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SocketRxEvent(
      uuid: serializer.fromJson<String>(json['uuid']),
      jsonContent: serializer.fromJson<String>(json['jsonContent']),
      timeRecorded: serializer.fromJson<DateTime>(json['timeRecorded']),
      expires: serializer.fromJson<DateTime>(json['expires']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'jsonContent': serializer.toJson<String>(jsonContent),
      'timeRecorded': serializer.toJson<DateTime>(timeRecorded),
      'expires': serializer.toJson<DateTime>(expires),
    };
  }

  SocketRxEvent copyWith(
          {String uuid,
          String jsonContent,
          DateTime timeRecorded,
          DateTime expires}) =>
      SocketRxEvent(
        uuid: uuid ?? this.uuid,
        jsonContent: jsonContent ?? this.jsonContent,
        timeRecorded: timeRecorded ?? this.timeRecorded,
        expires: expires ?? this.expires,
      );
  @override
  String toString() {
    return (StringBuffer('SocketRxEvent(')
          ..write('uuid: $uuid, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      uuid.hashCode,
      $mrjc(jsonContent.hashCode,
          $mrjc(timeRecorded.hashCode, expires.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SocketRxEvent &&
          other.uuid == this.uuid &&
          other.jsonContent == this.jsonContent &&
          other.timeRecorded == this.timeRecorded &&
          other.expires == this.expires);
}

class SocketRxEventsCompanion extends UpdateCompanion<SocketRxEvent> {
  final Value<String> uuid;
  final Value<String> jsonContent;
  final Value<DateTime> timeRecorded;
  final Value<DateTime> expires;
  const SocketRxEventsCompanion({
    this.uuid = const Value.absent(),
    this.jsonContent = const Value.absent(),
    this.timeRecorded = const Value.absent(),
    this.expires = const Value.absent(),
  });
  SocketRxEventsCompanion.insert({
    @required String uuid,
    @required String jsonContent,
    this.timeRecorded = const Value.absent(),
    this.expires = const Value.absent(),
  })  : uuid = Value(uuid),
        jsonContent = Value(jsonContent);
  static Insertable<SocketRxEvent> custom({
    Expression<String> uuid,
    Expression<String> jsonContent,
    Expression<DateTime> timeRecorded,
    Expression<DateTime> expires,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (jsonContent != null) 'json_content': jsonContent,
      if (timeRecorded != null) 'time_recorded': timeRecorded,
      if (expires != null) 'expires': expires,
    });
  }

  SocketRxEventsCompanion copyWith(
      {Value<String> uuid,
      Value<String> jsonContent,
      Value<DateTime> timeRecorded,
      Value<DateTime> expires}) {
    return SocketRxEventsCompanion(
      uuid: uuid ?? this.uuid,
      jsonContent: jsonContent ?? this.jsonContent,
      timeRecorded: timeRecorded ?? this.timeRecorded,
      expires: expires ?? this.expires,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SocketRxEventsCompanion(')
          ..write('uuid: $uuid, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }
}

class $SocketRxEventsTable extends SocketRxEvents
    with TableInfo<$SocketRxEventsTable, SocketRxEvent> {
  final GeneratedDatabase _db;
  final String _alias;
  $SocketRxEventsTable(this._db, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  GeneratedTextColumn _uuid;
  @override
  GeneratedTextColumn get uuid => _uuid ??= _constructUuid();
  GeneratedTextColumn _constructUuid() {
    return GeneratedTextColumn(
      'uuid',
      $tableName,
      false,
    );
  }

  final VerificationMeta _jsonContentMeta =
      const VerificationMeta('jsonContent');
  GeneratedTextColumn _jsonContent;
  @override
  GeneratedTextColumn get jsonContent =>
      _jsonContent ??= _constructJsonContent();
  GeneratedTextColumn _constructJsonContent() {
    return GeneratedTextColumn(
      'json_content',
      $tableName,
      false,
    );
  }

  final VerificationMeta _timeRecordedMeta =
      const VerificationMeta('timeRecorded');
  GeneratedDateTimeColumn _timeRecorded;
  @override
  GeneratedDateTimeColumn get timeRecorded =>
      _timeRecorded ??= _constructTimeRecorded();
  GeneratedDateTimeColumn _constructTimeRecorded() {
    return GeneratedDateTimeColumn(
      'time_recorded',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  final VerificationMeta _expiresMeta = const VerificationMeta('expires');
  GeneratedDateTimeColumn _expires;
  @override
  GeneratedDateTimeColumn get expires => _expires ??= _constructExpires();
  GeneratedDateTimeColumn _constructExpires() {
    return GeneratedDateTimeColumn(
      'expires',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [uuid, jsonContent, timeRecorded, expires];
  @override
  $SocketRxEventsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'socket_rx_events';
  @override
  final String actualTableName = 'socket_rx_events';
  @override
  VerificationContext validateIntegrity(Insertable<SocketRxEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid'], _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('json_content')) {
      context.handle(
          _jsonContentMeta,
          jsonContent.isAcceptableOrUnknown(
              data['json_content'], _jsonContentMeta));
    } else if (isInserting) {
      context.missing(_jsonContentMeta);
    }
    if (data.containsKey('time_recorded')) {
      context.handle(
          _timeRecordedMeta,
          timeRecorded.isAcceptableOrUnknown(
              data['time_recorded'], _timeRecordedMeta));
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires'], _expiresMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  SocketRxEvent map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SocketRxEvent.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SocketRxEventsTable createAlias(String alias) {
    return $SocketRxEventsTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $SocketTxEventsTable _socketTxEvents;
  $SocketTxEventsTable get socketTxEvents =>
      _socketTxEvents ??= $SocketTxEventsTable(this);
  $SocketRxEventsTable _socketRxEvents;
  $SocketRxEventsTable get socketRxEvents =>
      _socketRxEvents ??= $SocketRxEventsTable(this);
  SocketTxEventDao _socketTxEventDao;
  SocketTxEventDao get socketTxEventDao =>
      _socketTxEventDao ??= SocketTxEventDao(this as Database);
  SocketRxEventDao _socketRxEventDao;
  SocketRxEventDao get socketRxEventDao =>
      _socketRxEventDao ??= SocketRxEventDao(this as Database);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [socketTxEvents, socketRxEvents];
}
