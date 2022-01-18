import 'package:dio/dio.dart';
import 'package:flutter_project/week5/feature/photos/model/photos_model.dart';

abstract class IPhotosService {
  final Dio dio;

  IPhotosService(this.dio);

  List<PhotoModel> fetchAllPPhotos();
}
