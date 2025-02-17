import 'dart:convert';
import 'package:mockito/annotations.dart';
import 'package:segmento_de_moteis/domain/entities/motel.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([MotelApi])

class MotelApi {

  Future<List<Motel>?> getMotels() async {
    List<Motel>? allMotels;
    String url = 'https://www.jsonkeeper.com/b/1IXK';
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode != 200) {
        return null;
      }

      var responseData = json.decode(utf8.decode(response.bodyBytes));

      allMotels = (responseData['data']['moteis'] as List).map((json) {
        return Motel.fromJson(json as Map<String, dynamic>);
      }).toList();

      return allMotels;

    } on Exception catch (error) {
      print("$error");
      return null;
    }
  }
}
