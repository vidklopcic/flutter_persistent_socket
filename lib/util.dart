import 'package:fixnum/fixnum.dart';

class FPSUtil {
  Duration toDuration(int ms) {
    return Duration(milliseconds: ms);
  }

  int fromDuration(Duration duration) {
    return duration.inMilliseconds;
  }


  DateTime toDateTime(Int64 ts) {
    return DateTime.fromMillisecondsSinceEpoch(ts.toInt());
  }

  Int64 toTimestamp(DateTime dateTime) {
    return Int64(dateTime.millisecondsSinceEpoch);
  }
}
