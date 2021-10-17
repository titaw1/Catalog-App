import 'package:flutter/material.dart';

class OneSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Baju Atasan"),
        backgroundColor: Colors.redAccent.shade400,
      ),
      body: new ListView(
        children: <Widget>[
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 1"),
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 2"),
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 3"),
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 4"),
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 5"),
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 6"),
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 7"),
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 8"),
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 9"),
          // new ListOneSet("assets/images/mukena/mukena1.jpg", "One Set 10"),
        ],
      ),
    );
  }
}

class ListOneSet extends StatelessWidget {
  ListOneSet(this.image, this.title);

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
