import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/screens/item_card.dart';
import 'package:katalog_toko/models/baju_atasan.dart';

class BeliSekarang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ListView.builder(
                itemCount: bajuAtasans.length,
                itemBuilder: (context, index) => ItemCard6(
                  bajuAtasan: bajuAtasans[index],
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
