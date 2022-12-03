import 'package:flutter/cupertino.dart';
import 'package:todoey_app/widgets/taskstile_widget.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TasksTile(),
        TasksTile(),
      ],
    );
  }
}
