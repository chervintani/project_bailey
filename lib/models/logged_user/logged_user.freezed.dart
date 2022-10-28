// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logged_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoggedUser _$LoggedUserFromJson(Map<String, dynamic> json) {
  return _LoggedUser.fromJson(json);
}

/// @nodoc
mixin _$LoggedUser {
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedUserCopyWith<LoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedUserCopyWith<$Res> {
  factory $LoggedUserCopyWith(
          LoggedUser value, $Res Function(LoggedUser) then) =
      _$LoggedUserCopyWithImpl<$Res, LoggedUser>;
  @useResult
  $Res call({String? email, String? name});
}

/// @nodoc
class _$LoggedUserCopyWithImpl<$Res, $Val extends LoggedUser>
    implements $LoggedUserCopyWith<$Res> {
  _$LoggedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoggedUserCopyWith<$Res>
    implements $LoggedUserCopyWith<$Res> {
  factory _$$_LoggedUserCopyWith(
          _$_LoggedUser value, $Res Function(_$_LoggedUser) then) =
      __$$_LoggedUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? name});
}

/// @nodoc
class __$$_LoggedUserCopyWithImpl<$Res>
    extends _$LoggedUserCopyWithImpl<$Res, _$_LoggedUser>
    implements _$$_LoggedUserCopyWith<$Res> {
  __$$_LoggedUserCopyWithImpl(
      _$_LoggedUser _value, $Res Function(_$_LoggedUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_LoggedUser(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoggedUser implements _LoggedUser {
  const _$_LoggedUser({this.email, this.name});

  factory _$_LoggedUser.fromJson(Map<String, dynamic> json) =>
      _$$_LoggedUserFromJson(json);

  @override
  final String? email;
  @override
  final String? name;

  @override
  String toString() {
    return 'LoggedUser(email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggedUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggedUserCopyWith<_$_LoggedUser> get copyWith =>
      __$$_LoggedUserCopyWithImpl<_$_LoggedUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggedUserToJson(
      this,
    );
  }
}

abstract class _LoggedUser implements LoggedUser {
  const factory _LoggedUser({final String? email, final String? name}) =
      _$_LoggedUser;

  factory _LoggedUser.fromJson(Map<String, dynamic> json) =
      _$_LoggedUser.fromJson;

  @override
  String? get email;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_LoggedUserCopyWith<_$_LoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}
