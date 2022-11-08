import 'dart:async';

import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../model/list_item.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  List todos = [];
  TodoBloc()
      : super(ToDoSuccess(title: "", date: DateTime.now(), content: "")) {
    on<AddListEvent>(_onAddList);
    on<AddItemEvent>(_onAddItem);
    on<DeleteItemEvent>(_onDeleteItem);
    on<EditItemEvent>(_onEditItem);
  }

  FutureOr<void> _onAddList(AddListEvent event, Emitter<TodoState> emit) {
    var currentState = state;
    if (currentState is ToDoSuccess) {
      String newTitle = (state as ToDoSuccess).title;
      DateTime newDate = (state as ToDoSuccess).date;
      String newContent = (state as ToDoSuccess).content;
      emit(ToDoSuccess(title: newTitle, date: newDate, content: newContent));
    }
  }

  FutureOr<void> _onAddItem(AddItemEvent event, Emitter<TodoState> emit) {
    var currentState = state;
    if (currentState is ToDoSuccess) {
      String newTitle = (state as ToDoSuccess).title;
      DateTime newDate = (state as ToDoSuccess).date;
      String newContent = (state as ToDoSuccess).content;
      emit(ToDoSuccess(title: newTitle, date: newDate, content: newContent));
    }
  }

  FutureOr<void> _onDeleteItem(
      DeleteItemEvent event, Emitter<TodoState> emit) {}

  FutureOr<void> _onEditItem(EditItemEvent event, Emitter<TodoState> emit) {}
}
