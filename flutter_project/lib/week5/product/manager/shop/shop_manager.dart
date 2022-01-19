import 'package:flutter/cupertino.dart';
import 'package:flutter_project/week5/feature/photos/model/photos_model.dart';
import 'package:logger/logger.dart';

class ShopManager extends ChangeNotifier {
  List<PhotoModel> shopPhotoItems = [];
  double totalMoney = 0;

  void sumTotalMoney() {
    totalMoney = shopPhotoItems.fold(
        0,
        (previousValue, element) =>
            previousValue + element.price * element.count);
    notifyListeners();
  }

  void addShopItem(PhotoModel model) {
    model.count++;
    shopPhotoItems.add(model);
    sumTotalMoney();
    notifyListeners();
  }

  void removeShopItem(PhotoModel model) {
    model.count = 0;
    shopPhotoItems.remove(model);
    sumTotalMoney();

    notifyListeners();
  }

  void incrementItem(PhotoModel model) {
    if (!shopPhotoItems.contains(model)) {
      Logger().wtf("item has not found");
    } else {
      shopPhotoItems.singleWhere((element) => element.id == model.id).count++;
      sumTotalMoney();
    }
    notifyListeners();
  }

  void deIncrementItem(PhotoModel model) {
    if (!shopPhotoItems.contains(model)) {
      Logger().wtf("item has not found");
    } else {
      shopPhotoItems.singleWhere((element) => element.id == model.id).count--;
      sumTotalMoney();
    }
    notifyListeners();
  }
}
