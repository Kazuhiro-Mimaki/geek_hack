import 'package:flutter/material.dart';
import 'package:flash_chat/todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:flash_chat/todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.orangeAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.orangeAccent,
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
