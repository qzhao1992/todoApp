import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:todoapp/screen/tasks_screen.dart';

import 'package:todoapp/models/task_data.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => TaskData(),
          ),
        ],
        child: MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }

}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return ChangeNotifierProvider(
//      create: (context) => TaskData(),
//      child: MaterialApp(
//        home: TasksScreen(),
//      ),
//    );
//  }
//
//}

