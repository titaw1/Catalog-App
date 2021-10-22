import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class BajuAtasan {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  BajuAtasan({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<BajuAtasan> bajuAtasans = [
  BajuAtasan(
    id: 1,
    title: "Crop Outer",
    price: 120000,
    size: 12,
    description: "dummyText",
    image: "assets/images/cropOuter.png",
    color: Color(0xFFFF8A80),
  ),
  BajuAtasan(
    id: 2,
    title: "Jaket Denim Jeans",
    price: 133280,
    size: 12,
    description: "dummyText",
    image: "assets/images/jaketJeans.png",
    color: Color(0xFF0277BD),
  ),
  BajuAtasan(
    id: 3,
    title: "Jaket Parka",
    price: 125000,
    size: 12,
    description: "dummyText",
    image: "assets/images/jaketParka.png",
    color: Color(0xFF009688),
  ),
  BajuAtasan(
    id: 4,
    title: "Kaos lengan 3/4",
    price: 28000,
    size: 12,
    description: "dummyText",
    image: "assets/images/kaos.png",
    color: Color(0xFFD32F2F),
  ),
  BajuAtasan(
    id: 5,
    title: "Kaos JNSO Oversize",
    price: 81150,
    size: 12,
    description: "dummyText",
    image: "assets/images/kaosOversize.png",
    color: Color(0xFFFF8A65),
  ),
  BajuAtasan(
    id: 6,
    title: "Kemeja Oversize",
    price: 167243,
    size: 12,
    description: "dummyText",
    image: "assets/images/kemejaOversize.png",
    color: Color(0xFFCE93D8),
  ),
  BajuAtasan(
    id: 7,
    title: "Kemeja Salur",
    price: 104400,
    size: 12,
    description: "dummyText",
    image: "assets/images/kemejaSalur.png",
    color: Color(0xFF827717),
  ),
  BajuAtasan(
    id: 8,
    title: "Leydra Tunik",
    price: 50000,
    size: 12,
    description: "dummyText",
    image: "assets/images/leydraTunik.png",
    color: Color(0xFFC2185B),
  ),
  BajuAtasan(
    id: 9,
    title: "Livy Blouse",
    price: 64999,
    size: 12,
    description: "dummyText",
    image: "assets/images/livyBlouse.png",
    color: Color(0xFFD7CCC8),
  ),
  BajuAtasan(
    id: 10,
    title: "Long Outer Maple",
    price: 154000,
    size: 12,
    description: "dummyText",
    image: "assets/images/longOuter.png",
    color: Color(0xFFFF8F00),
  ),
  BajuAtasan(
    id: 11,
    title: "Manset Turtleneck",
    price: 35000,
    size: 12,
    description: "dummyText",
    image: "assets/images/manset.png",
    color: Color(0xFF4DD0E1),
  ),
  BajuAtasan(
    id: 12,
    title: "Vest Rajut",
    price: 45000,
    size: 12,
    description: "dummyText",
    image: "assets/images/vestRajut.png",
    color: Color(0xFFFBE9E7),
  ),
];
