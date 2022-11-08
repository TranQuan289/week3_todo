import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week3_todoapp/bloc/todo_bloc.dart';
import 'package:week3_todoapp/model/todo_model.dart';
import 'package:week3_todoapp/todo_view.dart';

class TodoHome extends StatelessWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if (state is TodoLoading) {
          return const CircularProgressIndicator();
        }
        if (state is ToDoLoaded) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                title: const Text(
                  "Notes",
                  style: TextStyle(color: Colors.black),
                )),
            body: Column(
              children: [
                const Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(18),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                        hintText: 'Search Your Notes',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return _todoCard(state.todos[index]);
                    },
                    itemCount: state.todos.length,
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 80, right: 10),
              child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TodoView()));
                  },
                  backgroundColor: const Color(0xFF333333),
                  child: const Icon(Icons.add)),
            ),
            bottomSheet: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 203, 203, 203))),
                child: Text("${state.todos.length} Notes")),
          );
        } else {
          return const Text("Error");
        }
      },
    );
  }
}

Padding _todoCard(Todo todo) {
  return Padding(
    padding: const EdgeInsets.only(top: 6.0, left: 18.0, right: 18.0),
    child: Card(
      color: const Color(0xFFEB5757),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: 366,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(todo.title,
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold)),
                Text(todo.date),
                Text(
                  todo.content,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
