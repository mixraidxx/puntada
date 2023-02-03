import 'dart:convert';

import 'package:puntada/api/CommonApi.dart';
import 'package:puntada/models/LoginModel.dart';

import '../User.dart';

class LoginService {
  final _api = CommonAPI();

  Future<bool> login(String email, String password) async {
    try {
      final response =
          await _api.sendGet("Account/loginCliente/$email/$password");
      if (response.statusCode == 200) {
        final loginResponse =
            LoginResponse.fromJson(json.decode(response.body));
        User().setToken(loginResponse.token);
        User().setNombre(loginResponse.nombreCompleto);
        return true;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
