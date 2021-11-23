import 'package:flutter/material.dart';
import 'package:katalog_toko/models/product.dart';
import 'package:katalog_toko/screens/details/body_mukena.dart';

class DetailMukena extends StatelessWidget {
  final Product product;

  const DetailMukena({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse(product.color)),
      appBar: AppBar(
        backgroundColor: Color(int.parse(product.color)),
        elevation: 0,
      ),
      body: Mukena(
        product: product,
      ),
    );
  }
}
