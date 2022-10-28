import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_bailey/widgets/button.dart';

import '../../../models/text_field_input/text_field_input.dart';
import '../todo.dart';

class TodoSubmitBtn extends StatelessWidget {
  const TodoSubmitBtn({super.key});

  VoidCallback? _onPressed(BuildContext context, TodoState state) {
    var bloc = context.read<TodoBloc>();
    if (state.task.errorType == ErrorType.none && state.task.value.isNotEmpty) {
      return () => bloc.add(TodoAddButtonPressed());
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Button(
          text: 'Add Task',
          onPressed: _onPressed(context, state),
        ),
      );
    });
  }
}
