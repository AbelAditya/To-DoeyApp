import 'package:flutter/material.dart';
import 'package:todoey/Model/task_data.dart';
import 'package:todoey/widgets/TaskTile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Task_Data>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (_, index) => TaskTile(
            title: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checking: (value) {
              taskData.checkTask(index);
            },
            longPressCallback: ()=>Provider.of<Task_Data>(context, listen: false).deleteTask(index),
          ),
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
