import 'package:flutter/material.dart';
import 'package:flutter_project/week2/posts_json_place_holder/posts_json_place_holder.dart';
import 'package:flutter_project/week2/statefull/home_statefull_view.dart';
import 'package:flutter_project/week2/stateless/home_stateless_view.dart';

import 'week1/welcome/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: PostJsonPlaceHolder());
  }
}
