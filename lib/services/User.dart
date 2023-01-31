// ignore: file_names
class User {
  String? _token = "";

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
}
