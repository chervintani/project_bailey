// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountryState {
  String get title => throw _privateConstructorUsedError;
  List<Country> get countries => throw _privateConstructorUsedError;
  RequestStatus get fetchCountriesStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryStateCopyWith<CountryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res, CountryState>;
  @useResult
  $Res call(
      {String title,
      List<Country> countries,
      RequestStatus fetchCountriesStatus});
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res, $Val extends CountryState>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? countries = null,
    Object? fetchCountriesStatus = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      fetchCountriesStatus: null == fetchCountriesStatus
          ? _value.fetchCountriesStatus
          : fetchCountriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryStateCopyWith<$Res>
    implements $CountryStateCopyWith<$Res> {
  factory _$$_CountryStateCopyWith(
          _$_CountryState value, $Res Function(_$_CountryState) then) =
      __$$_CountryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<Country> countries,
      RequestStatus fetchCountriesStatus});
}

/// @nodoc
class __$$_CountryStateCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$_CountryState>
    implements _$$_CountryStateCopyWith<$Res> {
  __$$_CountryStateCopyWithImpl(
      _$_CountryState _value, $Res Function(_$_CountryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? countries = null,
    Object? fetchCountriesStatus = null,
  }) {
    return _then(_$_CountryState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      fetchCountriesStatus: null == fetchCountriesStatus
          ? _value.fetchCountriesStatus
          : fetchCountriesStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
    ));
  }
}

/// @nodoc

class _$_CountryState implements _CountryState {
  const _$_CountryState(
      {this.title = '',
      final List<Country> countries = const [],
      this.fetchCountriesStatus = RequestStatus.waiting})
      : _countries = countries;

  @override
  @JsonKey()
  final String title;
  final List<Country> _countries;
  @override
  @JsonKey()
  List<Country> get countries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  @JsonKey()
  final RequestStatus fetchCountriesStatus;

  @override
  String toString() {
    return 'CountryState(title: $title, countries: $countries, fetchCountriesStatus: $fetchCountriesStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryState &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.fetchCountriesStatus, fetchCountriesStatus) ||
                other.fetchCountriesStatus == fetchCountriesStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_countries), fetchCountriesStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryStateCopyWith<_$_CountryState> get copyWith =>
      __$$_CountryStateCopyWithImpl<_$_CountryState>(this, _$identity);
}

abstract class _CountryState implements CountryState {
  const factory _CountryState(
      {final String title,
      final List<Country> countries,
      final RequestStatus fetchCountriesStatus}) = _$_CountryState;

  @override
  String get title;
  @override
  List<Country> get countries;
  @override
  RequestStatus get fetchCountriesStatus;
  @override
  @JsonKey(ignore: true)
  _$$_CountryStateCopyWith<_$_CountryState> get copyWith =>
      throw _privateConstructorUsedError;
}
