import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/models/one_set.dart';
import 'package:katalog_toko/repositories/one_set_repository.dart';
import 'package:katalog_toko/models/product.dart';
import 'package:katalog_toko/screens/item_card.dart';

class OneSet extends StatelessWidget {
  final OneSetRepository oneSet = OneSetRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: oneSet.getOneSet(),
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
                        itemBuilder: (context, index) => ItemCard3(
                          oneSet: res.data[index],
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
