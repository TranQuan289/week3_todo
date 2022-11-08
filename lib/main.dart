import 'package:flutter/material.dart';
import 'package:week3_todoapp/bloc/todo_bloc.dart';
import 'package:week3_todoapp/model/todo_model.dart';
import 'package:week3_todoapp/todo_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                TodoBloc()..add(const LoadTodos(todos: listTodo))),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          color: Colors.white,
          home: TodoHome()),
    );
  }
}
