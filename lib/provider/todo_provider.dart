import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class TodoProvider extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  // Method to add a new todo using the style of addNote
  void addTodo({required String title}) {
    var todo = Todo(
      id: _todos.isNotEmpty ? _todos[_todos.length - 1].id + 1 : 1,  // Generate ID based on the last todo
      title: title,
      done: false,
    );

    _todos.insert(0, todo);  // Insert at the beginning of the list

    notifyListeners();  // Notify listeners to update the UI
  }

  // Method to toggle the done status of a todo
  void toggleTodoStatus(int id) {
    final todoIndex = _todos.indexWhere((todo) => todo.id == id);
  
      _todos[todoIndex].done = !_todos[todoIndex].done;
      notifyListeners();
    }
  }

