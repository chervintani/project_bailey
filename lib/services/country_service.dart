import 'package:http/http.dart';

class CountryService {
  Future<Response> countries() async {
    return get(Uri.parse('https://date.nager.at/api/v3/AvailableCountries'));
  }
}
