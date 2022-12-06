import 'package:flutter/cupertino.dart';
import 'package:todoey_app/widgets/taskstile_widget.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> taskList;
  TasksList(this.taskList);
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          isCheckMain: widget.taskList[index].isDone,
          taskTitle: widget.taskList[index].name,
          callBackCheckBox: (bool? isCheck) {
            setState(() {
              widget.taskList[index].toggleIsDone();
            });
          },
        );
      },
      itemCount: widget.taskList.length,
    );
  }
}
