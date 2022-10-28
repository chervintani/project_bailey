import 'package:http/http.dart';
import 'package:project_bailey/assets/assets.dart';

import '../models/user/user.dart';

class AuthService {
  Future<Response> login(body) async {
    return post(Uri.parse('$API_URL/login'),
        body: body, headers: CUSTOM_HEADERS);
  }
}
