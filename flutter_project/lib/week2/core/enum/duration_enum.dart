import 'package:flutter_project/week2/core/exception/duration_exception.dart';

enum DurationEnums { LOW, NORMAL, HIGH, NORMAL2 }

extension DurationEnumsExtension on DurationEnums {
  Duration get time {
    //buradaki this bu enum un kullanıldığı yerde aldığı değeri gösterir
    switch (this) {
      case DurationEnums.HIGH:
        return Duration(seconds: 10);

      case DurationEnums.NORMAL:
        return Duration(seconds: 5);

      case DurationEnums.LOW:
        return Duration(seconds: 2);

      default:
        throw DurationException(this);
    }
  }
}
