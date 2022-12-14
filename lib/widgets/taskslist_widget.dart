import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/widgets/taskstile_widget.dart';

class TasksList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
              isCheckMain: taskData.taskList[index].isDone,
              taskTitle: taskData.taskList[index].name,
              callBackCheckBox: (bool? isCheck) {
                // setState(() {
                //   widget.taskList[index].toggleIsDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
