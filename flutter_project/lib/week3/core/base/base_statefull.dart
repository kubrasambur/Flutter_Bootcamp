import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/week3/core/image/image_constants.dart';
import 'package:flutter_project/week3/core/localizate/application_strings.dart';
import 'package:flutter_project/week3/food_card/food_card.dart';

abstract class BaseStatefull<T extends StatefulWidget> extends State<FoodCard> {
  ApplicationStrings applicationString = ApplicationStrings.instance;

  TextTheme get textTheme => Theme.of(context).textTheme;
  ThemeData get theme => Theme.of(context);
  ColorScheme get colorScheme => Theme.of(context).colorScheme;

  ImageConstants imageConstants = ImageConstants.instance;

  EdgeInsets insetsAll = EdgeInsets.all(30);

  double dynamichHeight(double val) => MediaQuery.of(context).size.height * val;
}
