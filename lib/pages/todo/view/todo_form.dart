import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/models/result/result.dart';
import 'package:project_bailey/pages/todo/todo.dart';

class TodoForm extends StatelessWidget {
  const TodoForm({super.key});

  static final _controller = TextEditingController(text: '');

  void _listener(BuildContext context, TodoState state) {
    switch (state.addingTaskStatus) {
      case RequestStatus.success:
        FocusScope.of(context).requestFocus(FocusNode());
        _controller.clear();
        final scaffold = ScaffoldMessenger.of(context);
        scaffold.removeCurrentSnackBar();
        scaffold.showSnackBar(
          SnackBar(
            content: const Text('Successfully added task'),
            action: SnackBarAction(
                label: 'CLOSE', onPressed: scaffold.hideCurrentSnackBar),
            duration: const Duration(seconds: 1),
          ),
        );
        break;
      default:
        return;
    }
  }

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<TodoBloc>();
    return BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
      return BlocListener<TodoBloc, TodoState>(
        listener: (context, state) => _listener(context, state),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, right: 10, bottom: 10, left: 10),
          child: TextField(
            onChanged: (value) {
              print('$value');
              bloc.add(TodoInputChanged(value));
            },
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Enter task to do...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      );
    });
  }
}
