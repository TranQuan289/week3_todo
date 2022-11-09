import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Todo extends Equatable {
  Todo({required this.title, required this.date, required this.content});
  final String id = const Uuid().v1();
  final String title;
  final String date;
  final String content;
  @override
  List<Object?> get props => [title, date, content];
}

List<Todo> listTodo = [
  Todo(
      title: "Shopping List",
      date: "12/12/2022",
      content:
          " Neque egestas congue quisque egestas diam. Eu augue ut lectus arcu bibendum at varius vel pharetra. Aliquam faucibus purus in massa. Placerat duis ultricies lacus sed turpis tincidunt id. Adipiscing at in tellus integer feugiat. Pretium vulputate sapien nec sagittis. Integer enim neque volutpat ac tincidunt vitae. Lectus quam id leo in vitae turpis massa sed. Amet justo donec enim diam vulputate ut pharetra sit. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. Id semper risus in hendrerit gravida. Lorem ipsum dolor sit amet consectetur. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. Duis at consectetur lorem donec massa. Pellentesque habitant morbi tristique senectus et netus."),
  Todo(
      title: "Reminder",
      date: "29/11",
      content: "Go and buy a new pair of headphones - old ones are broken"),
  Todo(
      title: "Lorem Ipsum",
      date: "21.12",
      content:
          "chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker."),
  // Todo(title: "title4", date: "date", content: "content"),
  // Todo(title: "title5", date: "date", content: "content"),
  // Todo(title: "title6", date: "date", content: "content"),
  // Todo(title: "title7", date: "date", content: "content"),
];
