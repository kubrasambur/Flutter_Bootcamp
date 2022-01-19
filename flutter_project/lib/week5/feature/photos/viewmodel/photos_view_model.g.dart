// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PhotosViewModel on _PhotosViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_PhotosViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$photosAtom = Atom(name: '_PhotosViewModelBase.photos');

  @override
  List<PhotoModel> get photos {
    _$photosAtom.reportRead();
    return super.photos;
  }

  @override
  set photos(List<PhotoModel> value) {
    _$photosAtom.reportWrite(value, super.photos, () {
      super.photos = value;
    });
  }

  final _$fetchAllPhotosAsyncAction =
      AsyncAction('_PhotosViewModelBase.fetchAllPhotos');

  @override
  Future<void> fetchAllPhotos() {
    return _$fetchAllPhotosAsyncAction.run(() => super.fetchAllPhotos());
  }

  final _$_PhotosViewModelBaseActionController =
      ActionController(name: '_PhotosViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_PhotosViewModelBaseActionController.startAction(
        name: '_PhotosViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_PhotosViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
photos: ${photos}
    ''';
  }
}
