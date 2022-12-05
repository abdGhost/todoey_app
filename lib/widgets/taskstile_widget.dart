import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isCheckMain;
  final String taskTitle;

  TasksTile(
    this.isCheckMain,
    this.taskTitle,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isCheckMain ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isCheckMain,
        onChanged: (bool? newValue) {
          print(newValue);
        },
        // onChanged: toggleCheckBoxState,
      ),
    );
  }
}

// (bool? isCheck) {
// setState(() {
// isCheckMain = isCheck!;
// });
// },
