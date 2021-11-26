import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/repositories/hijab_repository.dart';
import 'package:katalog_toko/screens/details/detail_hijab.dart';
import 'package:katalog_toko/screens/item_card.dart';
import 'package:katalog_toko/models/hijab.dart';

class Hijab extends StatelessWidget {
  final HijabRepository hijab = HijabRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: hijab.getHijab(),
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
                        itemBuilder: (context, index) => ItemCard2(
                          hijab: res.data[index],
                          press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailHijab(hijab: res.data[index]),
                            ),
                          ),
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
