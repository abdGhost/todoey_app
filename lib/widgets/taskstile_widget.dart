import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('A new task'),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
    );
  }
}
