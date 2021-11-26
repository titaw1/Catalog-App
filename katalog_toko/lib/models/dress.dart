import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Dress {
  final String image, title, description, price, color;
  final int size, id;

  Dress({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });

  factory Dress.fromJson(Map<String, dynamic> json) => Dress(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      size: json['size'],
      color: json['color']);
}
