import 'package:bloc/bloc.dart';
import 'package:project_bailey/models/result/result.dart';
import 'package:project_bailey/models/text_field_input/text_field_input.dart';
import 'package:project_bailey/pages/login/bloc/bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(super.initialState) {
    on<LoginEmailChanged>(_emailChanged);
    on<LoginPasswordChanged>(_passwordChanged);
    on<LoginButtonPressed>(_buttonPressed);
  }

  void _emailChanged(LoginEmailChanged event, Emitter<LoginState> emit) {
    var errorType = ErrorType.none;

    if (event.email.isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(state.copyWith.email(
      value: event.email,
      errorType: errorType,
    ));
  }

  void _passwordChanged(LoginPasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith.email(
      value: event.password,
    ));
  }

  Future<void> _buttonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(state.copyWith(
      loginStatus: RequestStatus.inProgress,
    ));
    await Future.delayed(Duration(
      seconds: 3,
    ));
    emit(state.copyWith(
      loginStatus: RequestStatus.success,
    ));
  }
}
