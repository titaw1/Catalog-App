import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("Tita's Store Catalogue"),
      leading: IconButton(
        icon: new Icon(
          Icons.home,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: new Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: new Icon(
            Icons.store_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
