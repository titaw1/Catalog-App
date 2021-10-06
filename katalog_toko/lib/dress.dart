import 'package:flutter/material.dart';

class Dress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Dress"),
        backgroundColor: Colors.redAccent.shade400,
      ),
      body: new ListView(
        children: <Widget>[
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 1"),
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 2"),
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 3"),
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 4"),
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 5"),
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 6"),
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 7"),
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 8"),
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 9"),
          new ListDress("assets/images/mukena/mukena1.jpg", "Dress 10"),
        ],
      ),
    );
  }
}

class ListDress extends StatelessWidget {
  ListDress(this.image, this.title);

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
