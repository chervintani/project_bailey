import 'dart:convert';

import 'package:project_bailey/models/country/country.dart';
import 'package:project_bailey/models/result/result.dart';

import '../services/country_service.dart';

class CountryRepository {
  final CountryService _countryService;

  CountryRepository({required CountryService countryService})
      : _countryService = countryService;

  Future<Result<List<Country>>> countries() async {
    var response = await _countryService.countries();
    return Result(
      statusCode: response.statusCode,
      // data: Country.fromJson(jsonDecode(response.body)),
      data: List.from(
        jsonDecode(response.body)
            .map((data) => Country.fromJson(data))
            .toList(),
      ),
    );
  }
}
