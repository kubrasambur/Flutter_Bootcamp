part of "task_service.dart";

enum _TaskServiceEndpoints { DOGS }

extension TaskServiceEndpointsExtension on _TaskServiceEndpoints {
  String get rawValue {
    switch (this) {
      case _TaskServiceEndpoints.DOGS:
        return "/dogs";
    }
  }
}
