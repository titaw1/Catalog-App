import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:katalog_toko/models/one_set.dart';

class OneSetRepository {
  Future getOneSet() async {
    var response =
        await http.get(Uri.parse('http://192.168.0.111:3000/oneSet'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((value) => OneSet.fromJson(value)).toList();
    } else {
      throw Exception();
    }
  }
}
