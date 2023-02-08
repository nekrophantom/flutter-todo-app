// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String task;
  final bool taskCompleted;
  final VoidCallback deleteTask;
  Function(bool?)? onChanged;
  
  TodoTile({
    required this.task,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteTask,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(14)
        ),
        child: Row(
          children: [

           
            // Checkbox
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),

            // Task Name
            Expanded(
              child: Text(
                task,
                style: TextStyle(
                  decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                  fontSize: 16
                ),
              ),
            ),

            IconButton(
              onPressed:  deleteTask,
              icon: Icon(Icons.delete),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}