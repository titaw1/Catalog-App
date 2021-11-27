import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:katalog_toko/models/product.dart';

class ProductRepository {
  List<Product> result = [];
  Future getProduct({String? query}) async {
    var response =
        await http.get(Uri.parse('http://192.168.0.111:3000/product'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      result = data.map((value) => Product.fromJson(value)).toList();
      if (query != null) {
        result = result
            .where((element) =>
                element.title!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    } else {
      throw Exception();
    }
    return result;
  }
}
