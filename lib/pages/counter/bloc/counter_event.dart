abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {
  final String message;

  CounterIncrementPressed(this.message);
}