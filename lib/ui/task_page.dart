import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding:
            EdgeInsets.only(top: 60.0, left: 40.0, right: 40.0, bottom: 40.0),
        child: Column(
          children: <Widget>[Icon(Icons.list), Text('Todoey')],
        ),
      ),
    );
  }
}
