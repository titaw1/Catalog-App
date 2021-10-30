import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Product {
  final String image, title, description, size, colorType;
  final int price, id;
  final Color color;
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
}

List<Product> products = [
  Product(
    id: 1,
    title: "Mukena Rayon",
    price: 71250,
    size: "S, M, L",
    description: "Mukena Rayon berbahan rayon motif print plus tas",
    image: "assets/images/mukenaRayon.png",
    color: Color(0xFFF06292),
    colorType: "Cream, Tosca, Pink,\nMerah, Ungu",
  ),
  Product(
    id: 2,
    title: "Mukena Jumbo Hyget",
    price: 57000,
    size: "Allsize fit to XL",
    description: "Mukena Jumbo Hyget menggunakan bahan Hyget Premium",
    image: "assets/images/mukenaJumbo.png",
    color: Color(0xFFD7CCC8),
    colorType: "Lavender, Maroon, Putih,\nNavy, Kunyit",
  ),
  Product(
    id: 3,
    title: "Mukena Katun Rosella",
    price: 125000,
    size: "S, M, L",
    description:
        "Mukena katun rosella terbuat dari bahan katun Rosella jatuh dan tidak kusut, tidak menerawang, lembut, adem,  berwarna pastel dan bordir yang cantik, dan tentu saja nyaman di pakai.",
    image: "assets/images/mukenaKatunRosella.png",
    color: Color(0xFFB9F6CA),
    colorType: "Grey, White, Khaky,\nMaroon, Brown",
  ),
  Product(
    id: 4,
    title: "Mukena Katun Tie Dye",
    price: 68000,
    size: "S, M, L",
    description:
        "Mukena Katun Tie Dye berbahan katun Rayon, memakai rempel di bagian atasan, karakteristik bahan dingin, lembut, tidak mudah lusut, nyaman digunakan sehari-hari",
    image: "assets/images/mukenaKatunTieDye.png",
    color: Color(0xFF80D8FF),
    colorType: "Tosca, Maroon, Salem,\nCoksu",
  ),
  Product(
    id: 5,
    title: "Mukena Renda Rajut",
    price: 75110,
    size: "S, M, L",
    description:
        "Bahan katun. Cocok buat traveling pouchnya ada talinya di sudut atas biar gampang dibawa kemana mana maupun sehari hari ,bahan juga adem ,cocok juga sebagai hadiah buat ibu kita tercinta sodara atau sahabat dekat,,",
    image: "assets/images/mukenaRenda.png",
    color: Color(0xFFFF4081),
    colorType: "Salem, Rouge, Ice blue,\nLight brown, Navy",
  ),
  Product(
    id: 6,
    title: "Mukena Fatimah Khadijah",
    price: 141500,
    size: "S, M, L",
    description:
        "Mukena siti khadijah full kd / mukena fatimah /mukena ala syahrini Bahan katun mikro (halus lembut dan adem tidak berbulu) besar dihiasi bordir depan yg panjang",
    image: "assets/images/mukenaFatimah.png",
    color: Color(0xFFD50000),
    colorType: "Maroon, Mocca, Greentea,\nPutih",
  ),
  Product(
    id: 7,
    title: "Mukena Shireen Renda",
    price: 150000,
    size: "S, M, L",
    description:
        "Bahan Katun Mikro. Serat lebih tebal dan padat dari katun biasa sehingga tidak tembus pandang/nerawang. Tekstur halus dan lembut sehingga nyaman dipakai, perawatan mudah Bersifat kuat dan tahan lama, cocok dipakai di segala cuaca, tidak menimbulkan iritasi/alergi (gatal-gatal)",
    image: "assets/images/mukenaShireen.png",
    color: Color(0xFFFFA726),
    colorType: "Grey, Emerald, Navy,\nHitam, Coksu",
  ),
  Product(
    id: 8,
    title: "Mukena Bordir Renda",
    price: 90250,
    size: "S, M, L",
    description:
        "Mukena bordir yang lagi trend, bahan katun yang halus lembut nyaman di pakai dan tidak kusut  dan di hiasi dengan renda yang sangat cantik dan mewah. Bahan Katun Mikro (Lembut, tebal. adem dan tidak nerawang)",
    image: "assets/images/mukenaBordir.png",
    color: Color(0xFF795548),
    colorType: "Bordir Coklat, Bordir Turkis,\nBordir Biru",
  ),
  Product(
    id: 9,
    title: "Mukena Anak / Rayon",
    price: 120000,
    size: "S, M, L",
    description:
        "Mukenah anak dari Kakha series terbuat dari bahan Rayon Twill premium. Bahan rayon twill ini tidak tebal, kainnya lebih ringan daripada katun lainnya sehingga sangat enteng untuk dipakai saat sholat. Bahan mukenah anak ini juga sangat halus dan lembut, sehingga anak tetap merasa sejuk meskipun sholat di siang maupun malam hari.",
    image: "assets/images/mukenaAnak1.png",
    color: Color(0xFF43A047),
    colorType: "Terracotta, Army, Nude,\nHijau Mint",
  ),
  Product(
    id: 10,
    title: "Mukena Anak Daydream",
    price: 99900,
    size: "S, M, L",
    description:
        "Mukena Anak Daydream bahan katun rayon. Satu set mukena atasan + bawahan + tas",
    image: "assets/images/mukenaAnak2.png",
    color: Color(0xFF42A5F5),
    colorType: "Lilac, Biru, Pink,\nGreentea, Peach",
  ),
];
