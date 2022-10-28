// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  TextFieldInput get task => throw _privateConstructorUsedError;
  RequestStatus get addingTaskStatus => throw _privateConstructorUsedError;
  List<dynamic> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {TextFieldInput task,
      RequestStatus addingTaskStatus,
      List<dynamic> tasks});

  $TextFieldInputCopyWith<$Res> get task;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? addingTaskStatus = null,
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      addingTaskStatus: null == addingTaskStatus
          ? _value.addingTaskStatus
          : addingTaskStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TextFieldInputCopyWith<$Res> get task {
    return $TextFieldInputCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextFieldInput task,
      RequestStatus addingTaskStatus,
      List<dynamic> tasks});

  @override
  $TextFieldInputCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$_TodoState>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? addingTaskStatus = null,
    Object? tasks = null,
  }) {
    return _then(_$_TodoState(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TextFieldInput,
      addingTaskStatus: null == addingTaskStatus
          ? _value.addingTaskStatus
          : addingTaskStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_TodoState implements _TodoState {
  const _$_TodoState(
      {this.task = const TextFieldInput(),
      this.addingTaskStatus = RequestStatus.waiting,
      final List<dynamic> tasks = const []})
      : _tasks = tasks;

  @override
  @JsonKey()
  final TextFieldInput task;
  @override
  @JsonKey()
  final RequestStatus addingTaskStatus;
  final List<dynamic> _tasks;
  @override
  @JsonKey()
  List<dynamic> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TodoState(task: $task, addingTaskStatus: $addingTaskStatus, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.addingTaskStatus, addingTaskStatus) ||
                other.addingTaskStatus == addingTaskStatus) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, addingTaskStatus,
      const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {final TextFieldInput task,
      final RequestStatus addingTaskStatus,
      final List<dynamic> tasks}) = _$_TodoState;

  @override
  TextFieldInput get task;
  @override
  RequestStatus get addingTaskStatus;
  @override
  List<dynamic> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
