import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Terlaris {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Terlaris(this.image, this.title, this.description, this.price, this.size,
      this.id, this.color);
}
