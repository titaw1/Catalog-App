import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/screens/hal_mukena.dart' as m;
import 'package:katalog_toko/screens/hal_hijab.dart' as h;
import 'package:katalog_toko/screens/hal_one_set.dart' as os;
import 'package:katalog_toko/screens/hal_dress.dart' as d;
import 'package:katalog_toko/screens/hal_celana.dart' as c;
import 'package:katalog_toko/screens/hal_baju_atasan.dart' as b;
import 'package:katalog_toko/screens/search.dart';

class halamanKategori extends StatefulWidget {
  @override
  _halamanKategoriState createState() => _halamanKategoriState();
}

class _halamanKategoriState extends State<halamanKategori>
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
        backgroundColor: Colors.red.shade600,
        title: Text("Kategori"),
        leading: IconButton(
          icon: new Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              showSearch(context: context, delegate: Searching());
            },
          ),
          SizedBox(width: kDefaultPadding / 2),
        ],
        bottom: new TabBar(
          indicator: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange.shade800,
                Colors.red,
              ],
            ),
            borderRadius: BorderRadius.circular(5),
          ),
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
          new os.OneSet(),
          new d.Dress(),
          new c.Celana(),
          new b.BajuAtasan(),
        ],
      ),
    );
  }
}
