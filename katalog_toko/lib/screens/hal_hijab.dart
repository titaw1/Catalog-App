import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/models/product.dart';
import 'package:katalog_toko/screens/item_card.dart';
import 'package:katalog_toko/models/hijab.dart';

class Hijab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: hijabs.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPadding,
                    crossAxisSpacing: kDefaultPadding,
                    childAspectRatio: 0.75),
                itemBuilder: (context, index) => ItemCard2(
                  hijab: hijabs[index],
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
