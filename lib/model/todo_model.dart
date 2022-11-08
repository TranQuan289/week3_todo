import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  const Todo({required this.title, required this.date, required this.content});
  final String title;
  final String date;
  final String content;
  @override
  List<Object?> get props => [title, date, content];
}

const List<Todo> listTodo = [
  Todo(
      title: "title1",
      date: "date",
      content:
          " Neque egestas congue quisque egestas diam. Eu augue ut lectus arcu bibendum at varius vel pharetra. Aliquam faucibus purus in massa. Placerat duis ultricies lacus sed turpis tincidunt id. Adipiscing at in tellus integer feugiat. Pretium vulputate sapien nec sagittis. Integer enim neque volutpat ac tincidunt vitae. Lectus quam id leo in vitae turpis massa sed. Amet justo donec enim diam vulputate ut pharetra sit. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. Id semper risus in hendrerit gravida. Lorem ipsum dolor sit amet consectetur. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. Duis at consectetur lorem donec massa. Pellentesque habitant morbi tristique senectus et netus."),
  Todo(title: "title2", date: "date", content: "content"),
  Todo(title: "title3", date: "date", content: "content"),
  Todo(title: "title4", date: "date", content: "content"),
  Todo(title: "title5", date: "date", content: "content"),
  Todo(title: "title6", date: "date", content: "content"),
  Todo(title: "title7", date: "date", content: "content"),
];
