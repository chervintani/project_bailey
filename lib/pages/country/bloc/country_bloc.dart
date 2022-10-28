import 'package:bloc/bloc.dart';
import 'package:project_bailey/pages/country/bloc/bloc.dart';
import 'package:project_bailey/repositories/country_repository.dart';

import '../../../models/result/result.dart';

class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final CountryRepository _countryRepository;

  CountryBloc({
    required CountryState countryState,
    required CountryRepository countryRepository,
  })  : _countryRepository = countryRepository,
        super(countryState) {
    on<CountryCreated>(_created);
  }

  Future<void> _created(
      CountryCreated event, Emitter<CountryState> emit) async {
    emit(state.copyWith(fetchCountriesStatus: RequestStatus.inProgress));

    var result = await _countryRepository.countries();
    print(result.data);
    switch (result.resultStatus) {
      case ResultStatus.success:
        var countries = result.data;
        if (countries != null) {
          emit(state.copyWith(
              countries: countries,
              fetchCountriesStatus: RequestStatus.success));
        }
        break;
      default:
    }
  }
}
