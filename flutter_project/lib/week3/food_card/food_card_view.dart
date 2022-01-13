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
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: foodItemList.length,
              itemBuilder: (context, index) =>
                  FoodCardWidget(model: foodItemList[index]),
            ),
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
      ),
    );
  }

  Text buildTextSubtitle(String title) {
    return Text(
      title,
      style: textTheme.bodyText1!.copyWith(color: colorScheme.onPrimary),
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
    ;
  }

  Widget buildWrapIconText() {
    return IconTextWidget(
        title: applicationString.checkOut,
        icon: Icons.arrow_right_alt_outlined);
  }

  Row buildRowSubTotal() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      buildTextSubtitle(applicationString.subTotal),
      Text('£9.30'),
    ]);
  }

  Row buildRowDelivery() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      buildTextSubtitle(applicationString.delivery),
      Text('data'),
    ]);
  }

  Row buildRowTotal() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        applicationString.total,
        style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
      ),
      Text('£9.30', style: textTheme.headline5),
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
