import 'package:flutter/material.dart';
import 'package:flutter_project/week2/core/component/scroll/scroll_bar_single.dart';
import 'package:flutter_project/week2/statefull/model/user.dart';

class HomeDetail extends StatelessWidget {
  final User model;

  const HomeDetail({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(model.title),
        ),
        body: ScrollBarSingle(
          child: Text(model.storyText),
        ));
  }
}
