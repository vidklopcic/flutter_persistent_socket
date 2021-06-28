import 'dart:io';
import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

QueryExecutor openDatabaseConnection() {
  try {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(join(dbFolder.path, 'db_v1.sqlite'));
      return VmDatabase(file);
    });
  } catch (e) {
    print('error opening native DB: $e.');
  }
}
