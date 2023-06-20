import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function(bool?) checking;
  final Function() longPressCallback;

  TaskTile({required this.title,this.isChecked = false,required this.checking,required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onLongPress: longPressCallback,
        title: Text(title,style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checking,
        ),
      ),
    );
  }
}
