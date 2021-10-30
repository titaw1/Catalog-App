import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/screens/details/detail_hijab.dart';
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
              child: ListView.builder(
                itemCount: hijabs.length,
                itemBuilder: (context, index) => ItemCard2(
                  hijab: hijabs[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailHijab(hijab: hijabs[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
