import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/models/dress.dart';
import 'package:katalog_toko/models/product.dart';
import 'package:katalog_toko/screens/item_card.dart';
import 'package:katalog_toko/models/hijab.dart';

class Dress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ListView.builder(
                itemCount: dresses.length,
                itemBuilder: (context, index) => ItemCard4(
                  dress: dresses[index],
                  press: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
