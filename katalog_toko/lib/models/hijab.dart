import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Hijab {
  final String image, title, description, size, colorType, price, color;
  final int id;

  Hijab(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.size,
      required this.color,
      required this.colorType});

  factory Hijab.fromJson(Map<String, dynamic> json) => Hijab(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      size: json['size'],
      color: json['color'],
      colorType: json['colorType']);
}
