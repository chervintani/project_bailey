// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'text_field_input.freezed.dart';

enum ErrorType {
  empty,
  length,
  value,
  format,
  none,
}

@freezed
class TextFieldInput with _$TextFieldInput {
  const factory TextFieldInput({
    @Default('') String value,
    @Default(ErrorType.none) ErrorType errorType,
    @Default('') String error,
  }) = _TextFieldInput;
}
