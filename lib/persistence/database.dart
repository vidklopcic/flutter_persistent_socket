import 'dart:io';

import 'package:flutter_persistent_socket/persistence/socket_rx_event.dart';
import 'package:flutter_persistent_socket/persistence/socket_tx_event.dart';
import 'package:moor/moor.dart';
import 'package:flutter_persistent_socket/persistence/database_stub.dart'
if (dart.library.io) 'package:flutter_persistent_socket/persistence/database_native.dart'
if (dart.library.html) 'package:flutter_persistent_socket/persistence/database_web.dart';

part 'database.g.dart';

@UseMoor(tables: [SocketTxEvents, SocketRxEvents], daos: [SocketTxEventDao, SocketRxEventDao])
class Database extends _$Database {
  Database() : super(openDatabaseConnection()) {
    socketRxEventDao.deleteExpired();
    socketTxEventDao.deleteExpired();
  }

  @override
  int get schemaVersion => 1;

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
