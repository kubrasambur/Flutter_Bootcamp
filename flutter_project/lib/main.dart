import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_project/week5/feature/tabbar/app_tabbar.dart';
import 'package:flutter_project/week5/product/manager/shop/shop_manager.dart';
import 'package:provider/provider.dart';

import 'week3/core/theme/light_theme.dart';

Future<void> main() async {
  await _init();
  const langPath = 'assets/lang';

  return runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ShopManager>(create: (context) => ShopManager()),
    ],
    child: EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
      path: langPath, // <-- change the path of the translation files
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  ));
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env'); //
  await EasyLocalization.ensureInitialized();
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
