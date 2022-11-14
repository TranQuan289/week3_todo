import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/todo_bloc.dart';
import 'model/todo_model.dart';

// ignore: must_be_immutable
class TodoView extends StatefulWidget {
  TodoView({required this.change, required this.todo, super.key});
  bool change;
  Todo todo;

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  bool replace = true;
  bool isButtonDisabled = true;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TodoBloc>();
    if (widget.change) {
      bloc.titleController.text = widget.todo.title;
      bloc.dateController.text = widget.todo.date;
      bloc.contentController.text = widget.todo.content;
    } else {
      setState(() {
        isButtonDisabled = false;
      });
    }
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          )),
      body: BlocListener<TodoBloc, TodoState>(
        listener: (context, state) {},
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                    readOnly: isButtonDisabled,
                    controller: bloc.titleController,
                    decoration: const InputDecoration(
                      hintText: "Title",
                    ),
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                    keyboardType: TextInputType.datetime,
                    readOnly: isButtonDisabled,
                    controller: bloc.dateController,
                    decoration: const InputDecoration(hintText: "date"),
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 18,
                    )),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                    readOnly: isButtonDisabled,
                    controller: bloc.contentController,
                    maxLines: 18,
                    decoration: const InputDecoration(
                        hintText: "content", border: InputBorder.none),
                    style: const TextStyle(
                      fontSize: 18,
                    ))
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border:
                Border.all(color: const Color.fromARGB(255, 203, 203, 203))),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.red,
                size: 32,
              ),
              onPressed: widget.change
                  ? () {
                      context
                          .read<TodoBloc>()
                          .add(DeleteTodo(todo: widget.todo));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Delete Complete")),
                      );
                      Navigator.pop(context);
                    }
                  : null,
            ),
            Ink(
              decoration: const ShapeDecoration(
                color: Color(0xFF333333),
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: widget.change
                    ? () {
                        bloc.titleController.text = "";
                        bloc.dateController.text = "";
                        bloc.contentController.text = "";
                        setState(() {
                          isButtonDisabled = !isButtonDisabled;
                          widget.change = false;
                        });
                      }
                    : null,
              ),
            ),
            IconButton(
              icon: widget.change
                  ? const Icon(Icons.edit)
                  : const Icon(Icons.check_circle_outline),
              onPressed: widget.change
                  ? () {
                      setState(() {
                        replace = false;
                        widget.change = false;
                        isButtonDisabled = !isButtonDisabled;
                      });
                    }
                  : (() {
                      if (replace) {
                        var todo = Todo(
                            title: bloc.titleController.text,
                            date: bloc.dateController.text,
                            content: bloc.contentController.text);
                        replace = false;
                        context.read<TodoBloc>().add(AddTodo(todo: todo));
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Add Complete")));
                      } else {
                        var todo = Todo(
                            title: bloc.titleController.text,
                            date: bloc.dateController.text,
                            content: bloc.contentController.text);
                        replace = false;
                        context
                            .read<TodoBloc>()
                            .add(DeleteTodo(todo: widget.todo));
                        context.read<TodoBloc>().add(AddTodo(todo: todo));
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Update Complete")));
                      }
                    }),
            ),
          ],
        ),
      ),
    );
  }
}
