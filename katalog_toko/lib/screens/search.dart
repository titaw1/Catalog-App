import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/repositories/mukena_repository.dart';
import 'package:katalog_toko/screens/details/detail_hijab.dart';
import 'package:katalog_toko/screens/details/detail_mukena.dart';
import 'package:katalog_toko/screens/item_card.dart';

class Searching extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  final ProductRepository mukena = ProductRepository();

  @override
  Widget buildResults(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: mukena.getProduct(query: query),
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
                        itemBuilder: (context, index) => ItemCard(
                          product: res.data[index],
                          press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailMukena(
                                product: res.data[index],
                              ),
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

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search'),
    );
  }
}
