// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_field_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextFieldInput {
  String get value => throw _privateConstructorUsedError;
  ErrorType get errorType => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextFieldInputCopyWith<TextFieldInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldInputCopyWith<$Res> {
  factory $TextFieldInputCopyWith(
          TextFieldInput value, $Res Function(TextFieldInput) then) =
      _$TextFieldInputCopyWithImpl<$Res, TextFieldInput>;
  @useResult
  $Res call({String value, ErrorType errorType, String error});
}

/// @nodoc
class _$TextFieldInputCopyWithImpl<$Res, $Val extends TextFieldInput>
    implements $TextFieldInputCopyWith<$Res> {
  _$TextFieldInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorType = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextFieldInputCopyWith<$Res>
    implements $TextFieldInputCopyWith<$Res> {
  factory _$$_TextFieldInputCopyWith(
          _$_TextFieldInput value, $Res Function(_$_TextFieldInput) then) =
      __$$_TextFieldInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, ErrorType errorType, String error});
}

/// @nodoc
class __$$_TextFieldInputCopyWithImpl<$Res>
    extends _$TextFieldInputCopyWithImpl<$Res, _$_TextFieldInput>
    implements _$$_TextFieldInputCopyWith<$Res> {
  __$$_TextFieldInputCopyWithImpl(
      _$_TextFieldInput _value, $Res Function(_$_TextFieldInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorType = null,
    Object? error = null,
  }) {
    return _then(_$_TextFieldInput(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TextFieldInput implements _TextFieldInput {
  const _$_TextFieldInput(
      {this.value = '', this.errorType = ErrorType.none, this.error = ''});

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final ErrorType errorType;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'TextFieldInput(value: $value, errorType: $errorType, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextFieldInput &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, errorType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextFieldInputCopyWith<_$_TextFieldInput> get copyWith =>
      __$$_TextFieldInputCopyWithImpl<_$_TextFieldInput>(this, _$identity);
}

abstract class _TextFieldInput implements TextFieldInput {
  const factory _TextFieldInput(
      {final String value,
      final ErrorType errorType,
      final String error}) = _$_TextFieldInput;

  @override
  String get value;
  @override
  ErrorType get errorType;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_TextFieldInputCopyWith<_$_TextFieldInput> get copyWith =>
      throw _privateConstructorUsedError;
}
