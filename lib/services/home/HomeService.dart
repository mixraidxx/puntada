import 'package:http/http.dart';
import 'package:puntada/api/CommonApi.dart';

class HomeService {
  final _api = CommonAPI();

  Future<String> getQrCode() async {
    try {
      final respose = await _api.sendGet(
          "AppPromociones/generarQrCombustibles/14A4A9E6-AD2E-ED11-8F54-B03AF2B6059F/19/dot/182738173/-99/dot/12452134");
      if (respose.statusCode == 200) {
        return respose.body;
      } else {
        return "";
      }
    } catch (e) {
      return "";
    }
  }

  Future<String?> consultarPuntos(String cardNumber) async {
    try {
      final respose = await _api
          .sendGet("AppRedenciones/consultarPuntos/4000000250100001/1234");
      if (respose.statusCode == 200) {
        return respose.body;
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<String?> getClientData(String clientID) async {
    try {
      final respose = await _api.sendGet(
          "appCatalogos/obtenerDatosCliente/2cfadf15-a083-ec11-8b84-ac1f6b9dfae3");
      if (respose.statusCode == 200) {
        return respose.body;
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
