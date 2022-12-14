import 'package:flutter/cupertino.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskList = [
    Task(name: 'Buy Milk', isDone: false),
    Task(name: 'Buy Breed', isDone: false),
    Task(name: 'Buy Veg', isDone: false)
  ];

  int get taskCount {
    return taskList.length;
  }
}
