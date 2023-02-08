// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'button.dart';

class DialogBox extends StatelessWidget {
  final textController;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    required this.textController,
    required this.onSave,
    required this.onCancel,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Container(
          height: 120,
          child: Column(
            children: [
                // text input
              TextField(
                controller: textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a new task'
                ),
              ),
              
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  // save button
                  Button(
                    buttonText: 'Save',
                    onPressed: onSave,
                  ),

                  SizedBox(width: 8,),

                  // cancel button
                  Button(
                    buttonText: 'Cancel',
                    onPressed: onCancel,
                  ),
                ],
              ),
            ]
          ),
        ),          
      );
  }
}