import 'package:flutter/material.dart';

class Celana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Celana"),
        backgroundColor: Colors.redAccent.shade400,
      ),
      body: new ListView(
        children: <Widget>[
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 1"),
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 2"),
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 3"),
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 4"),
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 5"),
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 6"),
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 7"),
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 8"),
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 9"),
          new ListCelana("assets/images/mukena/mukena1.jpg", "Celana 10"),
        ],
      ),
    );
  }
}

class ListCelana extends StatelessWidget {
  ListCelana(this.image, this.title);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.red),
          left: BorderSide(width: 1.0, color: Colors.red),
          right: BorderSide(width: 1.0, color: Colors.red),
          bottom: BorderSide(width: 1.0, color: Colors.red),
        ),
      ),
      padding: EdgeInsets.only(top: 15, bottom: 15),
      margin: EdgeInsets.all(10),
      child: new Column(
        children: <Widget>[
          new Container(
            child: new ListTile(
              leading: new Image.asset(
                image,
                width: 100,
                height: 300,
                fit: BoxFit.cover,
              ),
              title: new Text(title),
            ),
          ),
        ],
      ),
    );
  }
}
