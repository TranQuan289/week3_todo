import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:week3_todoapp/model/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoLoading()) {
    on<LoadTodos>(_onLoadTodos);
    on<AddTodo>(_onAddTodo);
    on<UpdateTodo>(_onUpdateTodo);
    on<DeleteTodo>(_onDeleteTodo);
  }

  FutureOr<void> _onLoadTodos(LoadTodos event, Emitter<TodoState> emit) {
    emit(ToDoLoaded(todos: event.todos));
  }

  FutureOr<void> _onAddTodo(AddTodo event, Emitter<TodoState> emit) {}

  FutureOr<void> _onUpdateTodo(UpdateTodo event, Emitter<TodoState> emit) {}

  FutureOr<void> _onDeleteTodo(DeleteTodo event, Emitter<TodoState> emit) {}
}
