part of './photo_service.dart';

enum _PhotoServicePath { PHOTOS }

//string olarak almak için extension yazmamız gerekiyor

extension _PhotoServicePathExtensison on _PhotoServicePath {
  get rawValue {
    switch (this) {
      case _PhotoServicePath.PHOTOS:
        return "photos";
    }
  }
}
