// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
        title: 'NEKRO - TO DO ',
      ),
      theme: ThemeData(
        primaryColor: Colors.blue[500],
        secondaryHeaderColor: Colors.blue[200],
        appBarTheme: AppBarTheme(
          shadowColor: Colors.white
        ),
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ) 
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Theme.of(context).primaryColor)
        )
      ),
    );
  }
}