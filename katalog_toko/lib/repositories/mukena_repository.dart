import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:katalog_toko/models/product.dart';

class ProductRepository {
  Future getProduct() async {
    var response =
        await http.get(Uri.parse('http://192.168.0.114:3000/product'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((value) => Product.fromJson(value)).toList();
    } else {
      throw Exception();
    }
  }
}
