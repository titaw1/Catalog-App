//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: halamanUtama(),
    //title: new Text("Tita's Store Catalogue"),
  ));
}

class halamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent[400],
        leading: new Icon(
          Icons.home,
          size: 45.0,
        ),
        title: new Text(
          "Tita's Store Catalogue",
        ),
      ),
      body: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new myCard(Icons.collections, "Mukena", Colors.red.shade500),
            new myCard(Icons.collections, "Hijab", Colors.red.shade600),
            new myCard(
                Icons.collections_outlined, "One Set", Colors.red.shade200),
            new myCard(Icons.collections, "Gamis", Colors.red),
            new myCard(
                Icons.menu_book_sharp, "Tentang Katalog!", Colors.red.shade300),
            new Center(
              child: new Text("Developed by Tita Wijayanti"),
            )
          ],
        ),
      ),
    );
  }
}

class myCard extends StatelessWidget {
  myCard(this.icon, this.text, this.color);

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
          child: new Column(
        children: <Widget>[
          new Icon(
            // Icons.collections,
            icon,
            size: 65,
            color: color,
          ),
          new TextButton(
              onPressed: null,
              child: new Text(
                text,
                style: new TextStyle(
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ))
        ],
      )),
    );
  }
}
