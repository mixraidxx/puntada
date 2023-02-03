// ignore: file_names
class User {
  String? _token = "";
  String? _nombreCompleto = "";

  static final User _user = User._internal();
  factory User() {
    return _user;
  }

  User._internal();

  setToken(String? token) {
    _token = token;
  }

  String? getToken() {
    return _token;
  }

  setNombre(String? nombre) {
    _nombreCompleto = nombre;
  }

  String? getNombreCompleto() {
    return _nombreCompleto;
  }
}
