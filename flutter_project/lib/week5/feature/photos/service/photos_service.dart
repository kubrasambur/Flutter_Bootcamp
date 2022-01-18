import 'package:dio/src/dio.dart';
import 'package:flutter_project/week5/feature/photos/model/photos_model.dart';
import 'package:flutter_project/week5/feature/photos/service/IPhotosService.dart';

part "package:flutter_project//feature/photos/service/photos_service.dart";

class PhotoService extends IPhotosService {
  PhotoService(Dio dio) : super(dio);

  @override
  List<PhotoModel> fetchAllPPhotos() {
    // TODO: implement fetchAllPPhotos
    throw UnimplementedError();
  }
}
