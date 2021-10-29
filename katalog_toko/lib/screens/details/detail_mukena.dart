import 'package:flutter/material.dart';
import 'package:katalog_toko/models/product.dart';
import 'package:katalog_toko/screens/details/body.dart';

class DetailMukena extends StatelessWidget {
  final Product product;

  const DetailMukena({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
      ),
      body: Body(
        product: product,
      ),
    );
  }
}
