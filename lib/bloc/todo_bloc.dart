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

  FutureOr<void> _onAddTodo(AddTodo event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is ToDoLoaded) {
      emit(ToDoLoaded(todos: List.from(state.todos)..add(event.todo)));
    }
  }

  FutureOr<void> _onUpdateTodo(UpdateTodo event, Emitter<TodoState> emit) {
    // final state = this.state;
    // if (state is ToDoLoaded) {
    //   List<Todo> todos = state.todos.where((todo) {
    //     if(todo.id == event.todo.id){
    //       re
    //     }
    //   }).toList();
    //   emit(
    //     ToDoLoaded(todos: todos),
    //   );
    // }
  }

  FutureOr<void> _onDeleteTodo(DeleteTodo event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is ToDoLoaded) {
      List<Todo> todos = state.todos.where((todo) {
        return todo.id != event.todo.id;
      }).toList();
      emit(
        ToDoLoaded(todos: todos),
      );
    }
  }
}
