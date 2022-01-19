import 'package:dio/dio.dart';
import 'package:flutter_project/week5/core/network/application_constat.dart';
import 'package:flutter_project/week5/feature/photos/model/photos_model.dart';
import 'package:flutter_project/week5/feature/photos/service/IPhotosService.dart';
import 'package:logger/logger.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_project/week5/feature/photos/service/photo_service.dart';
part 'photos_view_model.g.dart';

class PhotosViewModel = _PhotosViewModelBase with _$PhotosViewModel;

abstract class _PhotosViewModelBase with Store {
  final Dio _dio =
      Dio(BaseOptions(baseUrl: ApplicationConstant.instance.baseUrl));

  late final IPhotosService photoService;

  @observable
  bool isLoading = false;

  @observable
  List<PhotoModel> photos = [];

  _PhotosViewModelBase() {
    //bu sınıf oluştuktan sonra aşağıdaki satır oluşur
    photoService = PhotoService(_dio);
    fetchAllPhotos();
  }
  @action
  Future<void> fetchAllPhotos() async {
    changeLoading();
    final response = await photoService.fetchAllPPhotos();
    changeLoading();

    //Logger().wtf(response);
    photos = response;
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }
}
