import 'package:moor/backends.dart';
import 'package:moor/moor.dart';
import 'package:moor/moor_web.dart';

QueryExecutor openDatabaseConnection() {
  return WebDatabase('app_v1');
}
