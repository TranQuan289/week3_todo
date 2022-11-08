part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class AddListEvent extends TodoEvent {}

class AddItemEvent extends TodoEvent {}

class DeleteItemEvent extends TodoEvent {}

class EditItemEvent extends TodoEvent {}
