import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_project/week5/feature/photos/viewmodel/photos_view_model.dart';
import 'package:flutter_project/week5/product/manager/shop/shop_manager.dart';
import 'package:flutter_project/week5/product/widgets/card/photo_card.dart';
import 'package:provider/provider.dart';

final _viewModel = PhotosViewModel();

class PhotosView extends StatelessWidget {
  const PhotosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: buildObserverIsLoading(),
        actions: [builidActionChip(context)],
      ),
      body: buildGridViewBuilder(),
    );
  }

  Observer buildObserverIsLoading() {
    return Observer(builder: (_) {
      return Visibility(
        visible: _viewModel.isLoading,
        child: Padding(
            padding: EdgeInsets.all(8.0), child: CircularProgressIndicator()),
      );
    });
  }

  ActionChip builidActionChip(BuildContext context) {
    return ActionChip(
      label: Text("\$${context.watch<ShopManager>().totalMoney}"),
      onPressed: () {},
      avatar: Icon(Icons.shopping_bag),
    );
  }

  Widget buildGridViewBuilder() {
    return Observer(builder: (_) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8),
        itemCount: _viewModel.photos.length,
        itemBuilder: (context, index) {
          print(index);
          return PhotoCard(model: _viewModel.photos[index]);
        },
      );
    });
  }
}
