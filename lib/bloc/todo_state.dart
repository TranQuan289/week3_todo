part of 'todo_bloc.dart';

@immutable
abstract class TodoState {}

class TodoInitial extends TodoState {}

class ToDoSuccess extends TodoState {
  final List<CardItem> _list = [
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
  ToDoSuccess({required this.title, required this.date, required this.content});
  final String title;
  final DateTime date;
  final String content;
}
