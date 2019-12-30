import 'package:flutter/foundation.dart';
import 'package:flutter_todoey/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(
      name: 'Grab SOme bear',
    ),
    Task(
      name: 'Grab SOme bear',
    ),
    Task(
      name: 'Grab SOme bear',
    ),
    Task(
      name: 'Grab SOme bear',
    ),
  ];

  int get taskCount => tasks.length;
}
