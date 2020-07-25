import 'package:moor/backends.dart';
import 'package:moor/moor.dart';
import 'package:moor/moor_web.dart';

QueryExecutor openDatabaseConnection() {
  print('web db');
  return WebDatabase('app');
}
