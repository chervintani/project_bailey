abstract class TodoEvent {}

class TodoInputChanged extends TodoEvent {
  final String task;

  TodoInputChanged(this.task);
}

class TodoAddButtonPressed extends TodoEvent {
  TodoAddButtonPressed();
}

class TodoDeleteButtonPressed extends TodoEvent {
  final int index;
  TodoDeleteButtonPressed(this.index);
}
