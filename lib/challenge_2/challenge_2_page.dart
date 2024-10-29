import 'package:flutter/material.dart';

class Challenge2Page extends StatelessWidget {
  const Challenge2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenge 2 - To-Do List'),
      ),
      body: const TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<String> todos = [
    'Book flight to Arequipa',
    'Reserve hotel for Flutter Conf Latam',
    'Pack for the trip',
    'Prepare Flutter presentation',
    'Explore Arequipa city',
    'Attend keynote session',
    'Network with other developers',
    'Try Peruvian cuisine',
    'Visit Colca Canyon',
    'Write a blog post about the conference',
  ];

  List<bool> todoChecked = [
    false,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        final isChecked = todoChecked[index];
        return Card(
          key: UniqueKey(),
          child: ListTile(
            title: Text(todo),
            leading: Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  todoChecked[index] = value!;
                });
              },
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  todos.removeAt(index);
                  todoChecked.removeAt(index);
                });
              },
            ),
          ),
        );
      },
    );
  }
}
