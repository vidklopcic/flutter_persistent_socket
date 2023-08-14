import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

QueryExecutor? openDatabaseConnection() {
  try {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(join(dbFolder.path, 'db_v1.sqlite'));
      return NativeDatabase(file);
    });
  } catch (e) {
    print('error opening native DB: $e.');
  }
  return null;
}
