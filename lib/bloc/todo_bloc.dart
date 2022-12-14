import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:week3_todoapp/model/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoLoading()) {
    on<LoadTodos>(_onLoadTodos);
    on<AddTodo>(_onAddTodo);
    on<DeleteTodo>(_onDeleteTodo);
    //on<UpdateTodo>(_onUpdateTodo);
  }
  TextEditingController titleController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController contentController = TextEditingController();

  _onLoadTodos(LoadTodos event, Emitter<TodoState> emit) {
    emit(ToDoLoaded(todos: event.todos));
  }

  _onAddTodo(AddTodo event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is ToDoLoaded) {
      emit(ToDoLoaded(todos: List.from(state.todos)..insert(0, event.todo)));
    }
  }

  _onDeleteTodo(DeleteTodo event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is ToDoLoaded) {
      List<Todo> todos = state.todos.where((todo) {
        return event.todo.id != todo.id;
      }).toList();
      emit(
        ToDoLoaded(todos: todos),
      );
    }
  }

//  _onUpdateTodo(UpdateTodo event, Emitter<TodoState> emit) {
//     if (state is ToDoLoaded) {
//       List<Todo> todos = state.todos.where((todo) {
//         return event.todo.id != todo.id;
//       }).toList();
//       emit(
//         ToDoLoaded(todos: todos),
//       );
//     }
//   }
}
