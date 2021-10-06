import 'package:flutter/material.dart';

class Mukena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Mukena"),
        backgroundColor: Colors.redAccent.shade400,
      ),
      body: new ListView(
        children: <Widget>[
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 1"),
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 2"),
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 3"),
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 4"),
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 5"),
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 6"),
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 7"),
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 8"),
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 9"),
          new ListMukena("assets/images/mukena/mukena1.jpg", "Mukena 10"),
        ],
      ),
    );
  }
}

class ListMukena extends StatelessWidget {
  ListMukena(this.image, this.title);

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
