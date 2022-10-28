import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/pages/todo/todo.dart';

class TodoPage extends StatelessWidget {
  static const route = '/todo';
  static const pageName = 'Todo Page';
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(const TodoState()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(pageName),
        ),
        body: Column(
          children: const [
            TodoForm(),
            TodoSubmitBtn(),
            TodoList(),
          ],
        ),
      ),
    );
  }
}
