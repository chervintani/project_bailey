import 'package:bloc/bloc.dart';
import 'package:project_bailey/models/result/result.dart';

import '../../../models/text_field_input/text_field_input.dart';
import 'bloc.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(super.initialState) {
    on<TodoInputChanged>(_inputChanged);
    on<TodoAddButtonPressed>(_addButtonPressed);
    on<TodoDeleteButtonPressed>(_deleteButtonPressed);
  }

  void _inputChanged(TodoInputChanged event, Emitter<TodoState> emit) {
    print('input changed ${event.task}');
    var errorType = ErrorType.none;

    if (event.task.isEmpty || event.task.trim().isEmpty) {
      errorType = ErrorType.empty;
    }

    emit(state.copyWith.task(
      value: event.task,
      errorType: errorType,
    ));
  }

  Future<void> _addButtonPressed(
      TodoAddButtonPressed event, Emitter<TodoState> emit) async {
    emit(state.copyWith(
      tasks: [state.task.value, ...state.tasks],
      task: const TextFieldInput(value: ''),
      addingTaskStatus: RequestStatus.success,
    ));
    await Future.delayed(const Duration(
      seconds: 1,
    ));
    emit(state.copyWith(
      addingTaskStatus: RequestStatus.waiting,
    ));
  }

  void _deleteButtonPressed(
      TodoDeleteButtonPressed event, Emitter<TodoState> emit) {
    final List newTodos = [...state.tasks];
    newTodos.removeWhere((element) => newTodos.indexOf(element) == event.index);

    emit(state.copyWith(tasks: newTodos));
  }
}
