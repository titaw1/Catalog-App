import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/repositories/baju_atasan_repository.dart';
import 'package:katalog_toko/screens/item_card.dart';
import 'package:katalog_toko/models/baju_atasan.dart';

class BajuAtasan extends StatelessWidget {
  final BajuAtasanRepository repoBA = BajuAtasanRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: repoBA.getBajuAtasan(),
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
                        itemBuilder: (context, index) => ItemCard6(
                          bajuAtasan: res.data[index],
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
