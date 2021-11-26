import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:katalog_toko/models/hijab.dart';

class HijabRepository {
  Future getHijab() async {
    var response = await http.get(Uri.parse('http://192.168.0.114:3000/hijab'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((value) => Hijab.fromJson(value)).toList();
    } else {
      throw Exception();
    }
  }
}
