import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/widgets/tasks_list.dart';
import 'package:todoapp/screen/add_task_screen.dart';

class TasksScreen extends StatefulWidget {

//  Widget buildButtomSheet(BuildContext context){
//    return Container(
//      child: Center(child: Text('This is a bottom sheet')),
//    );
//  }

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egg'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(
                              (newTaskTitle){
                            setState(() {
                              tasks.add(Task(name: newTaskTitle));
                            });
                            Navigator.pop(context);
                          }
                      ),
                  )
              )
          );
        },
      ),
      body: Column(
        children:[
          Container(
          padding: EdgeInsets.only(top:60.0, left:30.0, right:30.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent
                  ),
              backgroundColor: Colors.white,
              radius: 30.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Todo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '12 Tasks',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 18,
                )
              ),

            ]
          ),
        ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height:300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
              ),
              child: TasksList(tasks),
            ),
          )
    ]
      ),
    );
  }
}



