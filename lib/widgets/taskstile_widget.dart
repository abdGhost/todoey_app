import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool? isCheckMain;
  final String? taskTitle;
  final void Function(bool?)? callBackCheckBox;

  TasksTile({
    this.isCheckMain,
    this.taskTitle,
    this.callBackCheckBox,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isCheckMain! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isCheckMain,
        onChanged: callBackCheckBox,
        // onChanged: toggleCheckBoxState,
      ),
    );
  }
}
