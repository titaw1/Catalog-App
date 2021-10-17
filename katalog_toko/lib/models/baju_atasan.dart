import 'package:flutter/material.dart';

class BajuAtasan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Baju Atasan"),
        backgroundColor: Colors.redAccent.shade400,
      ),
      body: new ListView(
        children: <Widget>[
          //   new ListBajuAtasan("assets/images/mukena/mukena1.jpg", "Tunik"),
          //   new ListBajuAtasan("assets/images/mukena/mukena1.jpg", "Kaos"),
          //   new ListBajuAtasan(
          //       "assets/images/mukena/mukena1.jpg", "Kaos Oversize"),
          //   new ListBajuAtasan("assets/images/mukena/mukena1.jpg", "Kemeja"),
          //   new ListBajuAtasan("assets/images/mukena/mukena1.jpg", "Jaket"),
          //   new ListBajuAtasan("assets/images/mukena/mukena1.jpg", "Long Outer"),
          //   new ListBajuAtasan("assets/images/mukena/mukena1.jpg", "Crop Outer"),
          //   new ListBajuAtasan("assets/images/mukena/mukena1.jpg", "Vest Rajut"),
          //   new ListBajuAtasan("assets/images/mukena/mukena1.jpg", "Blouse"),
          //   new ListBajuAtasan("assets/images/mukena/mukena1.jpg", "Manset"),
        ],
      ),
    );
  }
}

class ListBajuAtasan extends StatelessWidget {
  ListBajuAtasan(this.image, this.title);

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
