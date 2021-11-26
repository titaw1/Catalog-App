import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Celana {
  final String image, title, description, price, color;
  final int size, id;

  Celana({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
  factory Celana.fromJson(Map<String, dynamic> json) => Celana(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      size: json['size'],
      color: json['color']);
}
