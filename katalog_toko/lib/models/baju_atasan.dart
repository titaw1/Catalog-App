import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class BajuAtasan {
  final String image, title, description, color, price;
  final int size, id;

  BajuAtasan({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
  factory BajuAtasan.fromJson(Map<String, dynamic> json) => BajuAtasan(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      size: json['size'],
      color: json['color']);
}
