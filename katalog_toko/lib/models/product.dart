import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Product {
  final String image, title, description, size, colorType, price, color;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.colorType,
    required this.color,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      size: json['size'],
      color: json['color'],
      colorType: json['colorType']);
}
