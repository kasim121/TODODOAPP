import 'package:flutter/material.dart';
import 'package:flutter_todoapp/widgets/task_tile.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}