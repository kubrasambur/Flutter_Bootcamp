import 'package:mobx/mobx.dart';
part 'photos_view_model.g.dart';

class PhotosViewModel = _PhotosViewModelBase with _$PhotosViewModel;

abstract class _PhotosViewModelBase with Store {}
