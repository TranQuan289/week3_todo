import 'package:flutter/material.dart';
import 'package:week3_todoapp/todo_view.dart';

class CardItem extends StatelessWidget {
  const CardItem(
      {super.key,
      required this.title,
      required this.date,
      required this.content});

  final String title;
  final DateTime date;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0, left: 18.0, right: 18.0),
      child: Card(
        color: const Color(0xFFEB5757),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TodoView(
                          title: title,
                          date: date,
                          content: content,
                        )));
          },
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: 366,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold)),
                  Text("$date"),
                  Text(
                    content,
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
}
