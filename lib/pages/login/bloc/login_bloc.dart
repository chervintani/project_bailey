import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:project_bailey/models/logged_user/logged_user.dart';
import 'package:project_bailey/models/result/result.dart';
import 'package:project_bailey/models/text_field_input/text_field_input.dart';
import 'package:project_bailey/pages/login/bloc/bloc.dart';
import 'package:project_bailey/repositories/auth_repository.dart';

import '../../../models/user/user.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc({
    required LoginState loginState,
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(loginState) {
    on<LoginEmailChanged>(_emailChanged);
    on<LoginPasswordChanged>(_passwordChanged);
    on<LoginButtonPressed>(_buttonPressed);
  }

  void _emailChanged(LoginEmailChanged event, Emitter<LoginState> emit) {
    var errorType = ErrorType.none;
    if (event.email.isEmpty || event.email.trim().isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(state.copyWith.email(
      value: event.email,
      errorType: errorType,
    ));
  }

  void _passwordChanged(LoginPasswordChanged event, Emitter<LoginState> emit) {
    var errorType = ErrorType.none;
    if (event.password.isEmpty || event.password.trim().isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(state.copyWith.password(
      value: event.password,
      errorType: errorType,
    ));
  }

  Future<void> _buttonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(state.copyWith(loginStatus: RequestStatus.inProgress));

    var user = User(email: state.email.value, password: state.password.value);
    var result = await _authRepository.login(user);
    switch (result.resultStatus) {
      case ResultStatus.success:
        LoggedUser res = result.data;

        emit(
          state.copyWith(
            loginStatus: RequestStatus.success,
            loggedUser:
                LoggedUser(email: res.email ?? '', name: res.name ?? ''),
          ),
        );
        break;
      case ResultStatus.unauthorized:
        emit(state.copyWith(loginStatus: RequestStatus.failure));
        break;
      default:
    }
  }
}
