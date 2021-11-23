import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:katalog_toko/models/baju_atasan.dart';

class BajuAtasanRepository {
  Future getBajuAtasan() async {
    var response =
        await http.get(Uri.parse('http://192.168.0.114:3000/baju_atasan'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((value) => BajuAtasan.fromJson(value)).toList();
    } else {
      throw Exception();
    }
  }
}
