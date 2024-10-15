import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;
  final VoidCallback onToggle;

  const TodoTile({
    Key? key,
    required this.todo,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        child: ListTile(
          title: Text(todo.title),
          trailing: Checkbox(
            value: todo.done,
            onChanged: (value) {
              onToggle();
            },
            checkColor: Colors.amber.shade300,
          ),
        ),
      ),
    );
  }
}
