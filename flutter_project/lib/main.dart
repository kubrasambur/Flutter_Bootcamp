import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_project/week5/feature/tabbar/app_tabbar.dart';

import 'week3/core/theme/light_theme.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: AppTabBar(),
      theme: LightTheme.instance.data,
    );
  }
}
