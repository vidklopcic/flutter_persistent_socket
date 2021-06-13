import 'dart:async';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:moor/moor.dart';
import 'package:uuid/uuid.dart';
import 'database.dart';

part 'socket_tx_event.g.dart';

typedef SocketTxMessageQueryFilter<T extends Query<$SocketTxEventsTable, SocketTxEvent>> = T Function(T query);

final uuidObj = Uuid();

class SocketTxEvents extends Table {
  TextColumn get uuid => text()();

  TextColumn get type => text()();

  TextColumn get jsonContent => text()();

  DateTimeColumn get timeRecorded => dateTime().clientDefault(() => DateTime.now())();

  DateTimeColumn get expires => dateTime()();

  DateTimeColumn get dateKey0 => dateTime().nullable()();

  DateTimeColumn get dateKey1 => dateTime().nullable()();

  DateTimeColumn get dateKey2 => dateTime().nullable()();

  DateTimeColumn get dateKey3 => dateTime().nullable()();

  DateTimeColumn get dateKey4 => dateTime().nullable()();

  TextColumn get textKey0 => text().nullable()();

  TextColumn get textKey1 => text().nullable()();

  TextColumn get textKey2 => text().nullable()();

  TextColumn get textKey3 => text().nullable()();

  TextColumn get textKey4 => text().nullable()();

  RealColumn get realKey0 => real().nullable()();

  RealColumn get realKey1 => real().nullable()();

  RealColumn get realKey2 => real().nullable()();

  RealColumn get realKey3 => real().nullable()();

  RealColumn get realKey4 => real().nullable()();

  @override
  Set<Column> get primaryKey => {uuid};
}

@UseDao(tables: [SocketTxEvents])
class SocketTxEventDao extends DatabaseAccessor<Database> with _$SocketTxEventDaoMixin {
  final Database db;

  SocketTxEventDao(this.db) : super(db);

  Future<int> deleteExpired() {
    return (delete(socketTxEvents)..where((tbl) => tbl.expires.isSmallerOrEqualValue(DateTime.now()))).go();
  }

  Future<int> invalidateCacheForMessageType(SocketTxMessage message) {
    return invalidateCache((q) => q..where((tbl) => tbl.type.equals(message.messageType)));
  }

  Future<int> invalidateCacheForCacheUuid(SocketTxMessage message) {
    return invalidateCache((q) => q..where((tbl) => tbl.uuid.equals(message.cacheUuid)));
  }

  Future<int> invalidateCache(
      [SocketTxMessageQueryFilter<DeleteStatement<$SocketTxEventsTable, SocketTxEvent>>? filter]) {
    return ((filter ?? (f) => f)(delete(socketTxEvents))).go();
  }

  Future cacheEvent(SocketTxMessage message, String jsonContent) async {
    if (message.cache == null) return;
    print('caching ${message.messageType}');
    return await into(socketTxEvents).insertOnConflictUpdate(
      SocketTxEventsCompanion.insert(
        uuid: message.cacheUuid,
        type: message.messageType,
        expires: DateTime.now().add(message.cache!),
        dateKey0: Value(message.getCacheVal(CacheKeyType.date, 0)),
        dateKey1: Value(message.getCacheVal(CacheKeyType.date, 1)),
        dateKey2: Value(message.getCacheVal(CacheKeyType.date, 2)),
        dateKey3: Value(message.getCacheVal(CacheKeyType.date, 3)),
        dateKey4: Value(message.getCacheVal(CacheKeyType.date, 4)),
        textKey0: Value(message.getCacheVal(CacheKeyType.text, 0)),
        textKey1: Value(message.getCacheVal(CacheKeyType.text, 1)),
        textKey2: Value(message.getCacheVal(CacheKeyType.text, 2)),
        textKey3: Value(message.getCacheVal(CacheKeyType.text, 3)),
        textKey4: Value(message.getCacheVal(CacheKeyType.text, 4)),
        realKey0: Value(message.getCacheVal(CacheKeyType.real, 0)),
        realKey1: Value(message.getCacheVal(CacheKeyType.real, 1)),
        realKey2: Value(message.getCacheVal(CacheKeyType.real, 2)),
        realKey3: Value(message.getCacheVal(CacheKeyType.real, 3)),
        realKey4: Value(message.getCacheVal(CacheKeyType.real, 4)),
        jsonContent: jsonContent,
      ),
    );
  }

  Future saveEvent(SocketTxEvent event) {
    return into(socketTxEvents).insertOnConflictUpdate(event);
  }

  SimpleSelectStatement<$SocketTxEventsTable, SocketTxEvent> filter(SocketTxMessage message) {
    SimpleSelectStatement<$SocketTxEventsTable, SocketTxEvent> query = select(socketTxEvents);
    query.where((tbl) => tbl.type.equals(message.messageType));
    query.where((tbl) => tbl.expires.isBiggerOrEqualValue(DateTime.now()));
    query.orderBy([(o) => OrderingTerm(expression: o.timeRecorded)]);
    return query;
  }

  Future<List<SocketTxEvent>> unhandledEvents(int limit, {int offset = 0}) {
    return (select(socketTxEvents)
          ..where((tbl) => tbl.expires.isBiggerThanValue(DateTime.now()))
          ..limit(limit, offset: offset)
          ..orderBy([(q) => OrderingTerm(expression: q.timeRecorded)]))
        .get();
  }

  Future deleteEvents(List<SocketTxEvent> events) {
    return transaction(() async {
      for (SocketTxEvent e in events) {
        await delete(socketTxEvents).delete(e);
      }
    });
  }
}

extension CacheKeys on $SocketTxEventsTable {
  List<GeneratedDateTimeColumn> get dateKeys => [
        dateKey0,
        dateKey1,
        dateKey2,
        dateKey3,
        dateKey4,
      ];

  List<GeneratedTextColumn> get textKeys => [
        textKey0,
        textKey1,
        textKey2,
        textKey3,
        textKey4,
      ];

  List<GeneratedRealColumn> get realKeys => [
        realKey0,
        realKey1,
        realKey2,
        realKey3,
        realKey4,
      ];
}
