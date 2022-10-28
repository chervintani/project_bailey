import 'dart:convert';

import 'package:project_bailey/models/logged_user/logged_user.dart';
import 'package:project_bailey/services/auth_service.dart';

import '../models/result/result.dart';
import '../models/user/user.dart';

class AuthRepository {
  final AuthService _authService;

  AuthRepository({required AuthService authService})
      : _authService = authService;

  Future<Result> login(User body) async {
    var response = await _authService.login(json.encode(body));
    var data;

    if (response.statusCode == 401) {
      data = null;
    } else {
      var parsedJson = jsonDecode(response.body);
      data = LoggedUser.fromJson(parsedJson);
    }
    return Result(statusCode: response.statusCode, data: data);
  }
}
