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

class _DummyExecutor with QueryExecutor {
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
}

Database database = Database();
