import 'package:flutter/material.dart';
import 'package:week3_todoapp/todo_view.dart';

import 'model/list_item.dart';

List<CardItem> _list = [
  CardItem(
      title: "title1",
      date: DateTime.now(),
      content:
          " Neque egestas congue quisque egestas diam. Eu augue ut lectus arcu bibendum at varius vel pharetra. Aliquam faucibus purus in massa. Placerat duis ultricies lacus sed turpis tincidunt id. Adipiscing at in tellus integer feugiat. Pretium vulputate sapien nec sagittis. Integer enim neque volutpat ac tincidunt vitae. Lectus quam id leo in vitae turpis massa sed. Amet justo donec enim diam vulputate ut pharetra sit. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. Id semper risus in hendrerit gravida. Lorem ipsum dolor sit amet consectetur. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. Duis at consectetur lorem donec massa. Pellentesque habitant morbi tristique senectus et netus."),
  CardItem(title: "title2", date: DateTime.now(), content: "content"),
  CardItem(title: "title3", date: DateTime.now(), content: "content"),
  CardItem(title: "title4", date: DateTime.now(), content: "content"),
  CardItem(title: "title5", date: DateTime.now(), content: "content"),
  CardItem(title: "title6", date: DateTime.now(), content: "content"),
  CardItem(title: "title7", date: DateTime.now(), content: "content"),
];

class TodoHome extends StatelessWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                return _list[index];
              },
              itemCount: _list.length,
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
                      builder: (context) => TodoView(
                            title: "getContent",
                            date: DateTime.now(),
                            content: "getContent",
                          )));
            },
            backgroundColor: const Color(0xFF333333),
            child: const Icon(Icons.add)),
      ),
      bottomSheet: Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 203, 203, 203))),
          child: Text("${_list.length} Notes")),
    );
  }
}
