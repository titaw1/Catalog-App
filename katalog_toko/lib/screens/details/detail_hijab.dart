import 'package:flutter/material.dart';
import 'package:katalog_toko/models/hijab.dart';
import 'package:katalog_toko/screens/details/body_hijab.dart';
import 'package:katalog_toko/screens/details/body_mukena.dart';

class DetailHijab extends StatelessWidget {
  final Hijab hijab;

  const DetailHijab({Key? key, required this.hijab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hijab.color,
      appBar: AppBar(
        backgroundColor: hijab.color,
        elevation: 0,
      ),
      body: HijabDetail(
        hijab: hijab,
      ),
    );
  }
}
