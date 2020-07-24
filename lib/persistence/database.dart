import 'dart:io';

import 'package:flutter_persistent_socket/persistence/socket_rx_event.dart';
import 'package:flutter_persistent_socket/persistence/socket_tx_event.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [SocketTxEvents, SocketRxEvents], daos: [SocketTxEventDao, SocketRxEventDao])
class Database extends _$Database {
  Database() : super(_openConnection()) {
    socketRxEventDao.deleteExpired();
    socketTxEventDao.deleteExpired();
  }

  @override
  int get schemaVersion => 0;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (m, from, to) async {
          // delete all tables and restart
          for (var table in allTables) {
            await m.deleteTable(table.actualTableName);
            await m.createTable(table);
          }
        },
      );
}

Database database = Database();
