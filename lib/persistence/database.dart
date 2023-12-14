import 'package:flutter_persistent_socket/persistence/socket_rx_event.dart';
import 'package:flutter_persistent_socket/persistence/socket_tx_event.dart';
import 'package:drift/drift.dart';
import 'package:flutter_persistent_socket/persistence/database_stub.dart'
    if (dart.library.io) 'package:flutter_persistent_socket/persistence/database_native.dart'
    if (dart.library.html) 'package:flutter_persistent_socket/persistence/database_web.dart';

part 'database.g.dart';

@DriftDatabase(tables: [SocketTxEvents, SocketRxEvents], daos: [SocketTxEventDao, SocketRxEventDao])
class Database extends _$Database {
  Database() : super(openDatabaseConnection() ?? _DummyExecutor()) {
    try {
      socketRxEventDao.deleteExpired();
      socketTxEventDao.deleteExpired();
    } catch (e) {
      print('DB error (deleting expired events): $e.');
    }
  }

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (m, from, to) async {
          print('Migrating database from $from to $to');
          if (from == 1) {
            await transaction(() async {
              // TxEvents
              await m.addColumn(socketTxEvents, socketTxEvents.intKey0);
              await m.addColumn(socketTxEvents, socketTxEvents.intKey1);
              await m.addColumn(socketTxEvents, socketTxEvents.intKey2);
              await m.addColumn(socketTxEvents, socketTxEvents.intKey3);
              await m.addColumn(socketTxEvents, socketTxEvents.intKey4);

              // RxEvents
              await m.addColumn(socketRxEvents, socketRxEvents.intKey0);
              await m.addColumn(socketRxEvents, socketRxEvents.intKey1);
              await m.addColumn(socketRxEvents, socketRxEvents.intKey2);
              await m.addColumn(socketRxEvents, socketRxEvents.intKey3);
              await m.addColumn(socketRxEvents, socketRxEvents.intKey4);
            });
          }
        },
      );
}

class _DummyExecutor implements QueryExecutor {
  SqlDialect get dialect => SqlDialect.sqlite;

  @override
  TransactionExecutor beginTransaction() {
    throw UnimplementedError();
  }

  @override
  Future<bool> ensureOpen(QueryExecutorUser user) {
    throw UnimplementedError();
  }

  @override
  Future<void> runBatched(BatchedStatements statements) {
    throw UnimplementedError();
  }

  @override
  Future<void> runCustom(String statement, [List<Object?>? args]) {
    throw UnimplementedError();
  }

  @override
  Future<int> runDelete(String statement, List<Object?> args) {
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, Object?>>> runSelect(String statement, List<Object?> args) {
    throw UnimplementedError();
  }

  @override
  Future<int> runUpdate(String statement, List<Object?> args) {
    throw UnimplementedError();
  }

  @override
  Future<int> runInsert(String statement, List<Object?> args) {
    throw UnimplementedError();
  }

  @override
  Future<void> close() {
    throw UnimplementedError();
  }
}

Database database = Database();
