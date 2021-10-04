import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: halamanAwal(),
  ));
}

class halamanAwal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new Text("Katalog Tita's Store"),
    ));
  }
}
