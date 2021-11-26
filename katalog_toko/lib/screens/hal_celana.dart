import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/models/celana.dart';
import 'package:katalog_toko/repositories/celana_repository.dart';
import 'package:katalog_toko/screens/item_card.dart';

class Celana extends StatelessWidget {
  final CelanaRepository celana = CelanaRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: celana.getCelana(),
        builder: (BuildContext context, AsyncSnapshot res) {
          if (res.hasData) {
            return Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: GridView.builder(
                        itemCount: res.data.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: kDefaultPadding,
                            crossAxisSpacing: kDefaultPadding,
                            childAspectRatio: 0.75),
                        itemBuilder: (context, index) => ItemCard5(
                          celana: res.data[index],
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
