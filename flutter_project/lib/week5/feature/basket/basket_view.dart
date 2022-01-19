import 'package:flutter/material.dart';
import 'package:flutter_project/week5/product/manager/shop/shop_manager.dart';
import 'package:flutter_project/week5/product/widgets/card/photo_card.dart';
import 'package:provider/provider.dart';

class BasketView extends StatelessWidget {
  const BasketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<ShopManager>().shopPhotoItems.isEmpty
          ? Center(child: Text("basket is empty"))
          : buildListView(context),
    );
  }

  ListView buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: context.watch<ShopManager>().shopPhotoItems.length,
      itemBuilder: (context, index) {
        return PhotoCard(
            model: context.watch<ShopManager>().shopPhotoItems[index]);
      },
    );
  }
}
