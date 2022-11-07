import 'package:flutter/material.dart';
import 'package:week3_todoapp/todo_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        home: TodoHome());
  }
}
