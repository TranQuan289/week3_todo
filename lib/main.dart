import 'package:flutter/material.dart';
import 'package:week3_todoapp/bloc/todo_bloc.dart';
import 'package:week3_todoapp/model/todo_model.dart';
import 'package:week3_todoapp/todo_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (message.notification != null) {}
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => TodoBloc()..add(LoadTodos(todos: listTodo))),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          color: Colors.white,
          home: TodoHome()),
    );
  }
}
