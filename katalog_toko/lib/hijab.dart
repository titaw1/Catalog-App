import 'package:flutter/material.dart';

class Hijab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hijab"),
        backgroundColor: Colors.redAccent.shade400,
      ),
      body: new ListView(
        children: <Widget>[
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 1"),
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 2"),
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 3"),
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 4"),
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 5"),
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 6"),
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 7"),
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 8"),
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 9"),
          new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 10"),
        ],
      ),
    );
  }
}

class ListHijab extends StatelessWidget {
  ListHijab(this.image, this.title);

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
