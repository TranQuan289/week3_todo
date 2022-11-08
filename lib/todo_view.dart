import 'package:flutter/material.dart';

class TodoView extends StatelessWidget {
   TodoView({required this.change, super.key});
  bool change;

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
          children: const [
            TextField(
                decoration: InputDecoration(hintText: "Title"),
                maxLines: 1,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 40,
            ),
            TextField(
                decoration: InputDecoration(hintText: "date"),
                maxLines: 1,
                style: TextStyle(
                  fontSize: 18,
                )),
            SizedBox(
              height: 40,
            ),
            TextField(
                maxLines: 10,
                decoration: InputDecoration(
                    hintText: "content", border: InputBorder.none),
                style: TextStyle(
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
              icon: change is true ? Icon(
                 Icons.edit) : Icon(Icons.check_circle_outline),
               
              
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
