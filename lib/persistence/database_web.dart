import 'package:drift/backends.dart';
import 'package:drift/drift.dart';
import 'package:drift/web.dart';

QueryExecutor? openDatabaseConnection() {
  try {
    return WebDatabase('app_v1');
  } catch (e) {
    print('error opening web DB: $e.');
  }
  return null;
}
