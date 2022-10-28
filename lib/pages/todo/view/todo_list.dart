import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
      var bloc = context.read<TodoBloc>();

      void _pressDeleteIcon(int index) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Confirm'),
              content: const Text('Are you sure you want to remove this task?'),
              actions: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('No'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                  child: const Text('Yes'),
                  onPressed: () {
                    bloc.add(TodoDeleteButtonPressed(index));
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }

      return Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: ((context, index) => ListTile(
                focusColor: Color.fromARGB(255, 158, 196, 159),
                hoverColor: Colors.green,
                leading: Icon(Icons.format_list_bulleted),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                  onPressed: () => _pressDeleteIcon(index),
                ),
                title: Text('${state.tasks[index]}'),
              )),
          itemCount: state.tasks.length,
        ),
      );
    });
  }
}
