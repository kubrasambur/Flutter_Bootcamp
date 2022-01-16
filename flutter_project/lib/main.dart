import 'package:flutter/material.dart';
import 'package:flutter_project/week3/core/theme/light_theme.dart';
import 'package:flutter_project/week4/feature/task/view/task_view.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: TaskView(),
      theme: LightTheme.instance.data,
    );
  }
}
