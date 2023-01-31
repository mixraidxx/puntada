import 'package:http/http.dart';
import 'package:puntada/api/CommonApi.dart';

class HomeService {
  final _api = CommonAPI();

  Future<String> getQrCode() async {
    try {
      final respose = await _api.sendGet(
          "AppPromociones/generarQrCombustibles/14A4A9E6-AD2E-ED11-8F54-B03AF2B6059F/19/dot/182738173/-99/dot/12452134");
      if (respose.statusCode == 200) {
        //print(respose.body);
        return respose.body;
      } else {
        return "";
      }
    } catch (e) {
      return "";
    }
  }
}
