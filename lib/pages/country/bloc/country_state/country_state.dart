import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_bailey/models/result/result.dart';

import '../../../../models/country/country.dart';

part 'country_state.freezed.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState({
    @Default('') String title,
    @Default([]) List<Country> countries,
    @Default(RequestStatus.waiting) RequestStatus fetchCountriesStatus,
  }) = _CountryState;
}
