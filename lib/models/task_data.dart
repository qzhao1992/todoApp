import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }


  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    print("newTaskTitle: " + newTaskTitle);
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }


}