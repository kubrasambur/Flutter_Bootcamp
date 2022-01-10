import 'package:flutter_project/week2/core/enum/duration_enum.dart';

class DurationException implements Exception {
  final DurationEnums data;
  DurationException(this.data);

  @override
  String toString() {
    return "Duration not found for $data";
  }
}
