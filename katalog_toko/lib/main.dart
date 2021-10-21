import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/screens/hal_mukena.dart' as m;
import 'package:katalog_toko/screens/hal_hijab.dart' as h;

void main() {
  runApp(new MaterialApp(
    home: new halamanUtama(),
  ));
}

class halamanUtama extends StatefulWidget {
  @override
  _halamanUtamaState createState() => _halamanUtamaState();
}

class _halamanUtamaState extends State<halamanUtama>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
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
              Icons.store_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPadding / 2),
        ],
        bottom: new TabBar(
          isScrollable: true,
          controller: controller,
          tabs: <Widget>[
            Tab(
              child: Text("Mukena"),
            ),
            Tab(
              child: Text("Hijab"),
            ),
            new Tab(
              icon: new Text("One Set"),
            ),
            Tab(
              child: Text("Dress"),
            ),
            Tab(
              child: Text("Celana"),
            ),
            Tab(
              child: Text("Baju Atasan"),
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new m.Mukena(),
          new h.Hijab(),
          new m.Mukena(),
          new h.Hijab(),
          new m.Mukena(),
          new h.Hijab(),
        ],
      ),
    );
  }
}
