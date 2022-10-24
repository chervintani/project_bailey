import 'package:bloc/bloc.dart';
import 'package:project_bailey/pages/counter/bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(super.initialState) {
    on<CounterIncrementPressed>(_incrementPressed);
  }

  void _incrementPressed(
      CounterIncrementPressed event, Emitter<CounterState> emit) {
    print(event.message);
    emit(state.copyWith(count: state.count + 1));
  }
}
