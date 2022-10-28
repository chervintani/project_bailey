import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bailey/models/result/result.dart';
import 'package:project_bailey/models/text_field_input/text_field_input.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    @Default(TextFieldInput()) TextFieldInput task,
    @Default(RequestStatus.waiting) RequestStatus addingTaskStatus,
    @Default([]) List tasks,
  }) = _TodoState;
}
