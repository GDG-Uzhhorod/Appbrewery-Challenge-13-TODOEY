import 'package:flutter/material.dart';
import 'package:flutter_todoey/ui/task_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: TaskScreen(),
    );
  }
}
