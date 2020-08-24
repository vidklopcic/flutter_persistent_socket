import 'dart:async';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:moor/moor.dart';
import 'package:uuid/uuid.dart';
import 'database.dart';

part 'socket_rx_event.g.dart';

final uuidObj = Uuid();

class SocketRxEvents extends Table {
  TextColumn get uuid => text()();

  TextColumn get type => text()();

  TextColumn get jsonContent => text()();

  DateTimeColumn get timeRecorded => dateTime().clientDefault(() => DateTime.now())();

  DateTimeColumn get timeReceived => dateTime()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {uuid};
}

@UseDao(tables: [SocketRxEvents])
class SocketRxEventDao extends DatabaseAccessor<Database> with _$SocketRxEventDaoMixin {
  final Database db;

  SocketRxEventDao(this.db) : super(db);

  Future<int> deleteExpired() {
    return (delete(socketRxEvents)..where((tbl) => tbl.expires.isSmallerOrEqualValue(DateTime.now()))).go();
  }

  Future<int> invalidateCacheForMessageType(SocketRxMessage message) {
    return (delete(socketRxEvents)..where((tbl) => tbl.type.equals(message.messageType))).go();
  }

  Future<int> invalidateCacheForCacheUuid(SocketRxMessage message) {
    return (delete(socketRxEvents)..where((tbl) => tbl.uuid.equals(message.cacheUuid))).go();
  }

  Future<int> invalidateCache() {
    return (delete(socketRxEvents)).go();
  }

  Future cacheEvent(SocketRxMessage message) {
    print('caching ${message.messageType}');
    return into(socketRxEvents).insertOnConflictUpdate(
      SocketRxEventsCompanion.insert(
        uuid: message.cacheUuid,
        type: message.messageType,
        jsonContent: message.message.toString(),
        timeReceived: message.message.time,
        expires: DateTime.now().add(message.cache),
      ),
    );
  }

  Future<List<SocketRxEvent>> getEvents(SocketRxMessage message) {
    return (select(socketRxEvents)
          ..where((tbl) => tbl.type.equals(message.messageType))
          ..where((tbl) => tbl.expires.isBiggerOrEqualValue(DateTime.now()))
          ..orderBy([(o) => OrderingTerm(expression: o.timeReceived)]))
        .get();
  }
}
