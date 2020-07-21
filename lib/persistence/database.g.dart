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
  final String type;
  final String jsonContent;
  final DateTime timeRecorded;
  final DateTime timeReceived;
  final DateTime expires;
  SocketRxEvent(
      {@required this.uuid,
      @required this.type,
      @required this.jsonContent,
      @required this.timeRecorded,
      @required this.timeReceived,
      @required this.expires});
  factory SocketRxEvent.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return SocketRxEvent(
      uuid: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uuid']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      jsonContent: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}json_content']),
      timeRecorded: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}time_recorded']),
      timeReceived: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}time_received']),
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
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || jsonContent != null) {
      map['json_content'] = Variable<String>(jsonContent);
    }
    if (!nullToAbsent || timeRecorded != null) {
      map['time_recorded'] = Variable<DateTime>(timeRecorded);
    }
    if (!nullToAbsent || timeReceived != null) {
      map['time_received'] = Variable<DateTime>(timeReceived);
    }
    if (!nullToAbsent || expires != null) {
      map['expires'] = Variable<DateTime>(expires);
    }
    return map;
  }

  SocketRxEventsCompanion toCompanion(bool nullToAbsent) {
    return SocketRxEventsCompanion(
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      jsonContent: jsonContent == null && nullToAbsent
          ? const Value.absent()
          : Value(jsonContent),
      timeRecorded: timeRecorded == null && nullToAbsent
          ? const Value.absent()
          : Value(timeRecorded),
      timeReceived: timeReceived == null && nullToAbsent
          ? const Value.absent()
          : Value(timeReceived),
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
      type: serializer.fromJson<String>(json['type']),
      jsonContent: serializer.fromJson<String>(json['jsonContent']),
      timeRecorded: serializer.fromJson<DateTime>(json['timeRecorded']),
      timeReceived: serializer.fromJson<DateTime>(json['timeReceived']),
      expires: serializer.fromJson<DateTime>(json['expires']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'type': serializer.toJson<String>(type),
      'jsonContent': serializer.toJson<String>(jsonContent),
      'timeRecorded': serializer.toJson<DateTime>(timeRecorded),
      'timeReceived': serializer.toJson<DateTime>(timeReceived),
      'expires': serializer.toJson<DateTime>(expires),
    };
  }

  SocketRxEvent copyWith(
          {String uuid,
          String type,
          String jsonContent,
          DateTime timeRecorded,
          DateTime timeReceived,
          DateTime expires}) =>
      SocketRxEvent(
        uuid: uuid ?? this.uuid,
        type: type ?? this.type,
        jsonContent: jsonContent ?? this.jsonContent,
        timeRecorded: timeRecorded ?? this.timeRecorded,
        timeReceived: timeReceived ?? this.timeReceived,
        expires: expires ?? this.expires,
      );
  @override
  String toString() {
    return (StringBuffer('SocketRxEvent(')
          ..write('uuid: $uuid, ')
          ..write('type: $type, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('timeReceived: $timeReceived, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      uuid.hashCode,
      $mrjc(
          type.hashCode,
          $mrjc(
              jsonContent.hashCode,
              $mrjc(timeRecorded.hashCode,
                  $mrjc(timeReceived.hashCode, expires.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SocketRxEvent &&
          other.uuid == this.uuid &&
          other.type == this.type &&
          other.jsonContent == this.jsonContent &&
          other.timeRecorded == this.timeRecorded &&
          other.timeReceived == this.timeReceived &&
          other.expires == this.expires);
}

class SocketRxEventsCompanion extends UpdateCompanion<SocketRxEvent> {
  final Value<String> uuid;
  final Value<String> type;
  final Value<String> jsonContent;
  final Value<DateTime> timeRecorded;
  final Value<DateTime> timeReceived;
  final Value<DateTime> expires;
  const SocketRxEventsCompanion({
    this.uuid = const Value.absent(),
    this.type = const Value.absent(),
    this.jsonContent = const Value.absent(),
    this.timeRecorded = const Value.absent(),
    this.timeReceived = const Value.absent(),
    this.expires = const Value.absent(),
  });
  SocketRxEventsCompanion.insert({
    @required String uuid,
    @required String type,
    @required String jsonContent,
    this.timeRecorded = const Value.absent(),
    @required DateTime timeReceived,
    @required DateTime expires,
  })  : uuid = Value(uuid),
        type = Value(type),
        jsonContent = Value(jsonContent),
        timeReceived = Value(timeReceived),
        expires = Value(expires);
  static Insertable<SocketRxEvent> custom({
    Expression<String> uuid,
    Expression<String> type,
    Expression<String> jsonContent,
    Expression<DateTime> timeRecorded,
    Expression<DateTime> timeReceived,
    Expression<DateTime> expires,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (type != null) 'type': type,
      if (jsonContent != null) 'json_content': jsonContent,
      if (timeRecorded != null) 'time_recorded': timeRecorded,
      if (timeReceived != null) 'time_received': timeReceived,
      if (expires != null) 'expires': expires,
    });
  }

  SocketRxEventsCompanion copyWith(
      {Value<String> uuid,
      Value<String> type,
      Value<String> jsonContent,
      Value<DateTime> timeRecorded,
      Value<DateTime> timeReceived,
      Value<DateTime> expires}) {
    return SocketRxEventsCompanion(
      uuid: uuid ?? this.uuid,
      type: type ?? this.type,
      jsonContent: jsonContent ?? this.jsonContent,
      timeRecorded: timeRecorded ?? this.timeRecorded,
      timeReceived: timeReceived ?? this.timeReceived,
      expires: expires ?? this.expires,
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
    if (timeReceived.present) {
      map['time_received'] = Variable<DateTime>(timeReceived.value);
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
          ..write('type: $type, ')
          ..write('jsonContent: $jsonContent, ')
          ..write('timeRecorded: $timeRecorded, ')
          ..write('timeReceived: $timeReceived, ')
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

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
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

  final VerificationMeta _timeReceivedMeta =
      const VerificationMeta('timeReceived');
  GeneratedDateTimeColumn _timeReceived;
  @override
  GeneratedDateTimeColumn get timeReceived =>
      _timeReceived ??= _constructTimeReceived();
  GeneratedDateTimeColumn _constructTimeReceived() {
    return GeneratedDateTimeColumn(
      'time_received',
      $tableName,
      false,
    );
  }

  final VerificationMeta _expiresMeta = const VerificationMeta('expires');
  GeneratedDateTimeColumn _expires;
  @override
  GeneratedDateTimeColumn get expires => _expires ??= _constructExpires();
  GeneratedDateTimeColumn _constructExpires() {
    return GeneratedDateTimeColumn(
      'expires',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [uuid, type, jsonContent, timeRecorded, timeReceived, expires];
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
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
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
    if (data.containsKey('time_received')) {
      context.handle(
          _timeReceivedMeta,
          timeReceived.isAcceptableOrUnknown(
              data['time_received'], _timeReceivedMeta));
    } else if (isInserting) {
      context.missing(_timeReceivedMeta);
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires'], _expiresMeta));
    } else if (isInserting) {
      context.missing(_expiresMeta);
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
