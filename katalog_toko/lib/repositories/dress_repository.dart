import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:katalog_toko/models/dress.dart';

class DressRepository {
  Future getDress() async {
    var response = await http.get(Uri.parse('http://192.168.0.111:3000/dress'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((value) => Dress.fromJson(value)).toList();
    } else {
      throw Exception();
    }
  }
}
