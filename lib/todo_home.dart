import 'package:flutter/material.dart';
import 'package:week3_todoapp/todo_view.dart';

class TodoHome extends StatelessWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text(
            "Notes",
            style: TextStyle(color: Colors.black),
          )),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                hintText: 'Search Your Notes',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 80, right: 10),
        child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TodoView()));
            },
            backgroundColor: const Color(0xFF333333),
            child: const Icon(Icons.add)),
      ),
      bottomSheet: Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          decoration:
              BoxDecoration(border: Border.all(color: const Color(0xFF333333))),
          child: const Text("12 Notes")),
    );
  }
}
