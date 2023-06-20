import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/Model/Task.dart';

class Task_Data extends ChangeNotifier{
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount{
    return _tasks.length;
  }

  void addingTask(Task task){
    _tasks.add(task);
    notifyListeners();
  }

  void checkTask(int index){
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }
}