// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  TextFieldInput get email => throw _privateConstructorUsedError;
  TextFieldInput get password => throw _privateConstructorUsedError;
  RequestStatus get loginStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {TextFieldInput email,
      TextFieldInput password,
      RequestStatus loginStatus});

  $TextFieldInputCopyWith<$Res> get email;
  $TextFieldInputCopyWith<$Res> get password;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? loginStatus = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextFieldInputCopyWith<$Res> get email {
    return $TextFieldInputCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TextFieldInputCopyWith<$Res> get password {
    return $TextFieldInputCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextFieldInput email,
      TextFieldInput password,
      RequestStatus loginStatus});

  @override
  $TextFieldInputCopyWith<$Res> get email;
  @override
  $TextFieldInputCopyWith<$Res> get password;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? loginStatus = null,
  }) {
    return _then(_$_LoginState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.email = const TextFieldInput(),
      this.password = const TextFieldInput(),
      this.loginStatus = RequestStatus.waiting});

  @override
  @JsonKey()
  final TextFieldInput email;
  @override
  @JsonKey()
  final TextFieldInput password;
  @override
  @JsonKey()
  final RequestStatus loginStatus;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, loginStatus: $loginStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, loginStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final TextFieldInput email,
      final TextFieldInput password,
      final RequestStatus loginStatus}) = _$_LoginState;

  @override
  TextFieldInput get email;
  @override
  TextFieldInput get password;
  @override
  RequestStatus get loginStatus;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
