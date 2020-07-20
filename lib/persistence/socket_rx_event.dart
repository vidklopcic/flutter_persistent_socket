
import 'dart:async';

import 'package:flutter_persistent_socket/communication/skljoc_messages.dart';
import 'package:moor/moor.dart';
import 'package:uuid/uuid.dart';

import 'database.dart';

part 'socket_rx_event.g.dart';

final uuidObj = Uuid();

class SocketRxEvents extends Table {
  TextColumn get uuid => text()();

  TextColumn get jsonContent => text()();

  DateTimeColumn get timeRecorded => dateTime().clientDefault(() => DateTime.now())();

  DateTimeColumn get expires => dateTime().nullable()();
  
  @override
  Set<Column> get primaryKey => {uuid};
}

@UseDao(tables: [SocketRxEvents])
class SocketRxEventDao extends DatabaseAccessor<Database> with _$SocketRxEventDaoMixin {
  final Database db;

  SocketRxEventDao(this.db) : super(db);

  Future deleteExpired() {
    return (delete(socketRxEvents)..where((tbl) => tbl.expires.isSmallerOrEqualValue(DateTime.now()))).go();
  }

  Future<SocketRxEvent> cacheEvent(SocketRxMessageSpec message) {

  }

  Future<SocketRxEvent> getEvent(SocketRxMessageSpec message) {
    return (select(socketRxEvents)..where((tbl) => tbl.uuid.equals(message.messageType))).getSingle();
  }
}
