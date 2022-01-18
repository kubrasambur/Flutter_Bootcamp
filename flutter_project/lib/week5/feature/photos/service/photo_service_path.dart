part of 'photo_service.dart';

enum _PhotoServicePath { PHOTOS }

//string olarak almak için extension yazmamız gerekiyor

extension _PhotoServicePathExtension on _PhotoServicePath {
  String get rawValue {
    switch (this) {
      case _PhotoServicePath.PHOTOS:
        return "photos";
    }
  }
}
