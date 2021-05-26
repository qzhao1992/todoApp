import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(
          taskTitle,
          style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
//          toggleCheckboxState: (bool checkboxState){
//            setState((){
//              isChecked = checkboxState;
//            });
//          }
          ),
    );
  }
}

//class _TaskTileState extends State<TaskTile> {
//
//
//  @override
//  Widget build(BuildContext context) {
//    return ListTile(
//      title: Text('This is a task.',
//      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null)),
//      trailing: TaskCheckbox(
//          checkboxState: isChecked,
//          toggleCheckboxState: (bool checkboxState){
//            setState((){
//              isChecked = checkboxState;
//            });
//          }),
//    );
//  }
//}
//
//class TaskCheckbox extends StatelessWidget {
//
//  final bool checkboxState;
//  final Function toggleCheckboxState;
//
//  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.lightBlueAccent,
//      value: checkboxState,
//      onChanged: toggleCheckboxState,
//    );
//  }
//}

