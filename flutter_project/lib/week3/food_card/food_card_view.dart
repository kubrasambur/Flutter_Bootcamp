import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project/week3/core/localizate/application_strings.dart';
import 'package:flutter_project/week3/core/widgets/card/food_card.dart';
import 'package:flutter_project/week3/core/widgets/wrap/icon_text.dart';
import 'food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildPadding(),
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: insetsAll,
      child: buildColumnBody(),
    );
  }

  Column buildColumnBody() {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: buildListViewFoodList(),
        ),
        Spacer(),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Spacer(),
                Expanded(child: buildRowSubTotal()),
                Expanded(child: buildRowDelivery()),
                Expanded(flex: 2, child: buildRowTotal()),
                Spacer()
              ],
            )),
        Expanded(child: buildCheckOutButton()),
      ],
    );
  }

  ListView buildListViewFoodList() {
    return ListView.builder(
      itemCount: foodItemList.length,
      itemBuilder: (context, index) =>
          FoodCardWidget(model: foodItemList[index]),
    );
  }

  Text buildTextSubtitle(String title) {
    return Text(
      title,
      style: textTheme.bodyText1!.copyWith(color: colorSchema.onPrimary),
    );
  }

  ElevatedButton buildCheckOutButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.secondary),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: Center(
        child: buildWrapIconText(),
      ),
    );
  }

  Widget buildWrapIconText() {
    return IconTextWidget(
        title: applicationStrings.checkOut,
        icon: Icons.arrow_right_alt_outlined);
  }

  Row buildRowSubTotal() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      buildTextSubtitle(applicationStrings.subTotal),
      Text('£9.30'),
    ]);
  }

  Row buildRowDelivery() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      buildTextSubtitle(applicationStrings.delivery),
      Text('£0.70'),
    ]);
  }

  Row buildRowTotal() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        applicationStrings.total,
        style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
      ),
      Text('£10.00', style: textTheme.headline5),
    ]);
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          ApplicationStrings.instance.cartTitle,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }
}
