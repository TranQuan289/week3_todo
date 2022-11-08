import 'package:flutter/material.dart';

class TodoView extends StatelessWidget {
  const TodoView(
      {required this.title,
      required this.date,
      required this.content,
      super.key});
  final String title;
  final DateTime date;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title,
                maxLines: 1,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 40,
            ),
            Text("$date",
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 18,
                )),
            const SizedBox(
              height: 40,
            ),
            Text(content,
                style: const TextStyle(
                  fontSize: 18,
                ))
          ],
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
              onPressed: () {},
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
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.edit,
                size: 32,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
