import 'package:moor/backends.dart';
import 'package:moor/moor.dart';
import 'package:moor/moor_web.dart';

QueryExecutor openDatabaseConnection() {
  try {
    return WebDatabase('app_v1');
  } catch (e) {
    print('error opening web DB: $e.');
  }
}
