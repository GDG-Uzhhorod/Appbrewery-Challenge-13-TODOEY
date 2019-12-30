import 'package:flutter/material.dart';
import 'package:flutter_todoey/models/task_model.dart';
import 'package:flutter_todoey/ui/add_task_page.dart';
import 'package:flutter_todoey/ui/widgets/tasks_list.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
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

  void addNewTaskCallback(String taskTitle) {
    setState(() {
      tasks.add(Task(name: taskTitle));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) => AddTaskPage(
                    addTaskCallBack: addNewTaskCallback,
                  ));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 40.0, right: 40.0, bottom: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text('Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    )),
                Text(
                  '12 Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: TasksList(
                tasks: tasks,
              ),
            ),
          )
        ],
      ),
    );
  }
}
