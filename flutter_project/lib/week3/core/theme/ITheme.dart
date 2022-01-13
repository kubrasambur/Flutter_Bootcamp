import 'package:flutter/material.dart';
import 'package:flutter_project/week3/core/color/color_theme.dart';

abstract class ITheme {
  ThemeData get data;
  final colors = ColorTheme();
}
