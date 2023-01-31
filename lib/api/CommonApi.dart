import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:puntada/services/User.dart';

class CommonAPI {
  final _url = "http://app.puntada.com.mx/Puntada/api/";
  static final CommonAPI _api = CommonAPI._internal();
  final _timeoutDuration = const Duration(seconds: 20);
  final _user = User();

  factory CommonAPI() {
    return _api;
  }

  CommonAPI._internal();

  Future<Response> sendPost(String route, [dynamic body]) async {
    final http = IOClient();
    final url = Uri.parse(_url + route);
    String? token = _user.getToken();
    try {
      if (token != "") {
        final response = await http
            .post(url,
                headers: {
                  'Authorization': 'Bearer $token',
                  'Content-Type': 'application/json'
                },
                body: body)
            .timeout(_timeoutDuration,
                onTimeout: () => Response("Error timeout", 500));
        //Loggers.showDebug(response.body);
        print(response);
        return response;
      } else {
        final response = await http.post(url,
            headers: {'Content-Type': 'application/json'}, body: body);
        //Loggers.showDebug(response.body);
        print(response);
        return response;
      }
    } catch (e) {
      return Response(e.toString(), 500);
    }
  }

  Future<Response> sendGet(String route) async {
    final http = IOClient();
    final url = Uri.parse(_url + route);
    String? token = _user.getToken();
    try {
      if (token != "") {
        final response = await http.get(
          url,
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json'
          },
        ).timeout(_timeoutDuration,
            onTimeout: () => Response("Error timeout", 500));
        //Loggers.showDebug(response.body);
        print(response);
        return response;
      } else {
        final response =
            await http.get(url, headers: {'Content-Type': 'application/json'});
        //Loggers.showDebug(response.body);
        print(response);
        return response;
      }
    } catch (e) {
      return Response(e.toString(), 500);
    }
  }
}
