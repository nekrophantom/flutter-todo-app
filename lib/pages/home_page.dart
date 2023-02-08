// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/show_dialog.dart';
import '../widgets/todo_tile.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({
    required this.title,
    super.key
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final _textController = TextEditingController();

  List todoList = [];

  void checkBoxState(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      todoList.add([_textController.text, false]);
      _textController.clear();
    });

    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          textController: _textController,
          onSave: saveNewTask,
          onCancel: () {
            Navigator.of(context).pop();
            _textController.clear();
          } ,
        );
      }
    );
  }

  void deleteTask(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: todoList.length,

        itemBuilder: (context, index) {
          return TodoTile(
            task: todoList[index][0],
            taskCompleted: todoList[index][1],
            onChanged: (value) => checkBoxState(value, index),
            deleteTask: () => deleteTask(index),
          );
        },
      )

      
    );
  }
}