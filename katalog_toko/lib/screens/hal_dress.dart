import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/models/dress.dart';
import 'package:katalog_toko/models/product.dart';
import 'package:katalog_toko/repositories/dress_repository.dart';
import 'package:katalog_toko/screens/item_card.dart';
import 'package:katalog_toko/models/hijab.dart';

class Dress extends StatelessWidget {
  final DressRepository dress = DressRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: dress.getDress(),
        builder: (BuildContext context, AsyncSnapshot res) {
          if (res.hasData) {
            return Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: ListView.builder(
                        itemCount: res.data.length,
                        itemBuilder: (context, index) => ItemCard4(
                          dress: res.data[index],
                          press: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
