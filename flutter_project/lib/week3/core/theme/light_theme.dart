import 'package:flutter/material.dart';

import 'ITheme.dart';

class LightTheme extends ITheme {
  static LightTheme? _instace;
  static LightTheme get instance {
    if (_instace != null) return _instace!;
    _instace = LightTheme._init();
    return _instace!;
  }

  LightTheme._init();

  final ThemeData _lightTheme = ThemeData.light();

  @override
  ThemeData get data => ThemeData(
        appBarTheme: _lightTheme.appBarTheme.copyWith(
          backgroundColor: Colors.white,
          textTheme: _lightTheme.textTheme.apply(bodyColor: colors.lynch),
        ),
        textTheme: _lightTheme.textTheme.apply(bodyColor: Colors.black),
        colorScheme: _lightTheme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.green,
          onPrimary: colors.lynch,
          onSecondary: colors.catSkillWhite,
        ),
        tabBarTheme: TabBarTheme(
            labelColor: colors.bitterSweet, unselectedLabelColor: Colors.black),
      );
}
