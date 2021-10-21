import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/models/hijab.dart';
import 'package:katalog_toko/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            product.image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            product.title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "\Rp${product.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ItemCard2 extends StatelessWidget {
  final Hijab hijab;
  final Function press;
  const ItemCard2({
    Key? key,
    required this.hijab,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: hijab.color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            hijab.image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            hijab.title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "\Rp${hijab.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}