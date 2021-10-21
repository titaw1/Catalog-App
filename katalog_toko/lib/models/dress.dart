import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Dress {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Dress({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Dress> dresses = [
  Dress(
    id: 1,
    title: "Hexa Dress",
    price: 301000,
    size: 12,
    description: "dummyText",
    image: "assets/images/hexaDress.png",
    color: Color(0xFFE64A19),
  ),
  Dress(
    id: 2,
    title: "Jamilah Dress",
    price: 47000,
    size: 12,
    description: "dummyText",
    image: "assets/images/jamilahDress.png",
    color: Color(0xFF9E9D24),
  ),
  Dress(
    id: 3,
    title: "Korean Lace Dress",
    price: 175000,
    size: 12,
    description: "dummyText",
    image: "assets/images/koreanLaceDress.png",
    color: Color(0xFFFF5252),
  ),
  Dress(
    id: 4,
    title: "Long Dress Kerut",
    price: 41900,
    size: 12,
    description: "dummyText",
    image: "assets/images/longDressKerut.png",
    color: Color(0xFFBF360C),
  ),
  Dress(
    id: 5,
    title: "Maxi Dress",
    price: 109000,
    size: 12,
    description: "dummyText",
    image: "assets/images/maxiDress.png",
    color: Color(0xFF0277BD),
  ),
  Dress(
    id: 6,
    title: "Ruffle Dress",
    price: 56700,
    size: 12,
    description: "dummyText",
    image: "assets/images/ruffleDress.png",
    color: Color(0xFFBCAAA4),
  ),
  Dress(
    id: 7,
    title: "Sabrina Dress",
    price: 55500,
    size: 12,
    description: "dummyText",
    image: "assets/images/sabrinaDress.png",
    color: Color(0xFFE57373),
  ),
  Dress(
    id: 8,
    title: "Safina Midi Dress",
    price: 69600,
    size: 12,
    description: "dummyText",
    image: "assets/images/safinaMidiDress.png",
    color: Color(0xFFD7CCC8),
  ),
  Dress(
    id: 9,
    title: "Sanso Dress",
    price: 65000,
    size: 12,
    description: "dummyText",
    image: "assets/images/sansoDress.png",
    color: Color(0xFFF0F4C3),
  ),
  Dress(
    id: 10,
    title: "Trisen Dress",
    price: 126000,
    size: 12,
    description: "dummyText",
    image: "assets/images/trisenDress.png",
    color: Color(0xFFFFE57F),
  ),
  Dress(
    id: 11,
    title: "Vintage Dress",
    price: 165000,
    size: 12,
    description: "dummyText",
    image: "assets/images/vintageDress.png",
    color: Color(0xFF00897B),
  ),
  Dress(
    id: 12,
    title: "Viola Dress",
    price: 70000,
    size: 12,
    description: "dummyText",
    image: "assets/images/violaDress.png",
    color: Color(0xFF9E9E9E),
  ),
];
