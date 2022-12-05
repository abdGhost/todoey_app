import 'package:flutter/cupertino.dart';
import 'package:todoey_app/widgets/taskstile_widget.dart';

import '../models/task.dart';

class TasksList extends StatelessWidget {
  List<Task> taskList = [
    Task(
      name: 'Buy Milk',
      isDone: false,
    ),
    Task(
      name: 'Buy Breed',
      isDone: false,
    ),
    Task(
      name: 'Buy Veg',
      isDone: false,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskList[index].isDone,
          taskList[index].name,
        );
      },
      itemCount: taskList.length,
    );
  }
}
