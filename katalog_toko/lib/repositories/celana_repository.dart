import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:katalog_toko/models/celana.dart';

class CelanaRepository {
  Future getCelana() async {
    var response =
        await http.get(Uri.parse('http://192.168.0.111:3000/celana'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((value) => Celana.fromJson(value)).toList();
    } else {
      throw Exception();
    }
  }
}
