import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class OneSet {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  OneSet({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<OneSet> oneSets = [
  OneSet(
    id: 1,
    title: "Andara Set",
    price: 69000,
    size: 12,
    description: "dummyText",
    image: "assets/images/andaraSet.png",
    color: Color(0xFF8D6E63),
  ),
  OneSet(
    id: 2,
    title: "Aurelia Set",
    price: 120000,
    size: 12,
    description: "dummyText",
    image: "assets/images/aureliaSet.png",
    color: Color(0xFFFFEB3B),
  ),
  OneSet(
    id: 3,
    title: "Hailey Set",
    price: 119999,
    size: 12,
    description: "dummyText",
    image: "assets/images/haileySet.png",
    color: Color(0xFFCFD8DC),
  ),
  OneSet(
    id: 4,
    title: "Marmer Set",
    price: 66500,
    size: 12,
    description: "dummyText",
    image: "assets/images/marmerSet.png",
    color: Color(0xFFE1BEE7),
  ),
  OneSet(
    id: 5,
    title: "Nakuma Set",
    price: 85000,
    size: 12,
    description: "dummyText",
    image: "assets/images/nakumaSet.png",
    color: Color(0xFFD6D6D6),
  ),
  OneSet(
    id: 6,
    title: "Pajamas Set",
    price: 89900,
    size: 12,
    description: "dummyText",
    image: "assets/images/pajamasSet.png",
    color: Color(0xFF1976D2),
  ),
  OneSet(
    id: 7,
    title: "Rachelia Set",
    price: 153000,
    size: 12,
    description: "dummyText",
    image: "assets/images/racheliaSet.png",
    color: Color(0xFFC5CAE9),
  ),
  OneSet(
    id: 8,
    title: "Syafi Set",
    price: 75500,
    size: 12,
    description: "dummyText",
    image: "assets/images/syafiSet.png",
    color: Color(0xFFD7CCC8),
  ),
  OneSet(
    id: 9,
    title: "Tie Dye Set",
    price: 35000,
    size: 12,
    description: "dummyText",
    image: "assets/images/tieDyeSet.png",
    color: Color(0xFFB2EBF2),
  ),
  OneSet(
    id: 10,
    title: "Zarafa Set",
    price: 104500,
    size: 12,
    description: "dummyText",
    image: "assets/images/zarafaSet.png",
    color: Color(0xFF90A4AE),
  ),
];
