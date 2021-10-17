import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Mukena Rayon",
    price: 71250,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaRayon.png",
    color: Color(0xFFF06292),
  ),
  Product(
    id: 2,
    title: "Mukena Jumbo Hyget",
    price: 57000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaJumbo.png",
    color: Color(0xFFD7CCC8),
  ),
  Product(
    id: 3,
    title: "Mukena Katun Rosella",
    price: 125000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaKatunRosella.png",
    color: Color(0xFFB9F6CA),
  ),
  Product(
    id: 4,
    title: "Mukena Katun Tie Dye",
    price: 68000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaKatunTieDye.png",
    color: Color(0xFF80D8FF),
  ),
  Product(
    id: 5,
    title: "Mukena Renda Rajut",
    price: 75110,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaRenda.png",
    color: Color(0xFFFF4081),
  ),
  Product(
    id: 6,
    title: "Mukena Fatimah Khadijah",
    price: 141500,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaFatimah.png",
    color: Color(0xFFD50000),
  ),
  Product(
    id: 7,
    title: "Mukena Shireen Renda",
    price: 150000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaShireen.png",
    color: Color(0xFFFFA726),
  ),
  Product(
    id: 8,
    title: "Mukena Bordir Renda",
    price: 90250,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaBordir.png",
    color: Color(0xFF795548),
  ),
  Product(
    id: 9,
    title: "Mukena Anak / Rayon",
    price: 120000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaAnak1.png",
    color: Color(0xFF43A047),
  ),
  Product(
    id: 10,
    title: "Mukena Anak Daydream",
    price: 99900,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaAnak2.png",
    color: Color(0xFF42A5F5),
  ),
];
