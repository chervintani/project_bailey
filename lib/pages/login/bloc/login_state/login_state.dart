import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bailey/models/result/result.dart';
import 'package:project_bailey/models/text_field_input/text_field_input.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(TextFieldInput()) TextFieldInput email,
    @Default(TextFieldInput()) TextFieldInput password,
    @Default(RequestStatus.waiting) RequestStatus loginStatus,
  }) = _LoginState;
}
