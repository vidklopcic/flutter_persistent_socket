import 'package:moor/moor.dart';
import 'package:uuid/uuid.dart';

import 'database.dart';

part 'socket_tx_event.g.dart';

class SocketTxEvents extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get jsonContent => text()();

  DateTimeColumn get timeRecorded => dateTime().clientDefault(() => DateTime.now())();

  DateTimeColumn get expires => dateTime().nullable()();
}

@UseDao(tables: [SocketTxEvents])
class SocketTxEventDao extends DatabaseAccessor<Database> with _$SocketTxEventDaoMixin {
  final Database db;

  SocketTxEventDao(this.db) : super(db);

  Future deleteEvents(List<SocketTxEvent> events) {
    return transaction(() async {
      for (SocketTxEvent e in events) {
        await delete(socketTxEvents).delete(e);
      }
    });
  }

  Future addEvent(SocketTxEventsCompanion event) {
    return into(socketTxEvents).insert(event);
  }

  Stream<List<SocketTxEvent>> watchEvents(int limit) {
    return (select(socketTxEvents)
          ..where((tbl) => tbl.expires.isBiggerThanValue(DateTime.now()))
          ..limit(limit))
        .watch();
  }

  Future<int> deleteExpired() {
    return (delete(socketTxEvents)..where((tbl) => tbl.expires.isSmallerOrEqualValue(DateTime.now()))).go();
  }

  Future<List<SocketTxEvent>> unhandledEvents(int limit, {int offset = 0}) {
    return (select(socketTxEvents)
          ..where((tbl) => tbl.expires.isBiggerThanValue(DateTime.now()))
          ..limit(limit, offset: offset))
        .get();
  }
}
