import 'dart:convert';
import 'dart:isolate';

import 'package:puntada/api/CommonApi.dart';
import 'package:puntada/models/LoginModel.dart';

import '../User.dart';

class LoginService {
  final _api = CommonAPI();

  Future<bool> login(String email, String password) async {
    try {
      final result = Isolate.run(() async {
        // final response =
        //     await _api.sendGet("Account/loginCliente/$email/$password");
        // if (response.statusCode == 200) {
        //   final loginResponse =
        //       LoginResponse.fromJson(json.decode(response.body));
        //   User().setToken(loginResponse.token);
        //   User().setNombre(loginResponse.nombreCompleto);
        //   return true;
        // }
        fibonacci(42);
        return true;
      });
      return result;
    } catch (e) {
      print(e);
      return false;
    }
  }

  int fibonacci(int n) {
    if (n == 0 || n == 1) {
      return n;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2);
    }
  }
}
