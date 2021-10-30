import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Hijab {
  final String image, title, description, size, colorType;
  final int price, id;
  final Color color;

  Hijab(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.size,
      required this.color,
      required this.colorType});
}

List<Hijab> hijabs = [
  Hijab(
    id: 1,
    title: "Aathifah Scarf",
    price: 35000,
    size: "200x75cm",
    description:
        "Aathifah Scarf bahan babydoll. Buat daily oke, buat formal oke. Limited stock! Jangan sampai kehabisan.",
    image: "assets/images/aathifahScarf.png",
    color: Color(0xFFD81B60),
    colorType: "Caramel, Rosewood,Soft Purple, Beige, Light Grey",
  ),
  Hijab(
    id: 2,
    title: "Aeesha Khimar",
    price: 45000,
    size: "Depan ±75cm\nBelakang ±95cm",
    description:
        "Cocok untuk yang suka dengan hijab syar'i. Karna nutup dada dan perut.  ",
    image: "assets/images/aeeshaKhimar.png",
    color: Color(0xFF795548),
    colorType: "Purple, Mustard, Lavender",
  ),
  Hijab(
    id: 3,
    title: "Bella Square",
    price: 19000,
    size: "115x115cm",
    description: "Bella Square bahan Polycotton",
    image: "assets/images/bellaSquare.png",
    color: Color(0xFFF8BBD0),
    colorType: "Terracota, Mustard, Grey,\nMilo, Matcha, Tosca",
  ),
  Hijab(
    id: 4,
    title: "Bergo Baby",
    price: 23000,
    size: "",
    description:
        "Hijab viral satu ini kali ini hadir untuk si kecil loh bunda. Bahan yang digunakan diamond italiano. Hijab ini cocok untuk usia 1-3th. ",
    image: "assets/images/bergoBaby.png",
    color: Color(0xFFFF8A65),
    colorType: "Latte, Creamy, Yellow,\nTurkish, Rosewood",
  ),
  Hijab(
    id: 5,
    title: "Crinkle Shawl",
    price: 20000,
    size: "200*90cm",
    description:
        "Material cotton crinkle (adem, mudah diatur, cocok untuk daily dan formal dan tak perlu disetrika). Finishing rawis",
    image: "assets/images/crinkleShawl.png",
    color: Color(0xFFAFB42B),
    colorType: "Maroon, Mustard, Bata,\nSoft Yellow, Soft Blue",
  ),
  Hijab(
    id: 6,
    title: "Diamond Scarf",
    price: 22500,
    size: "175*80cm",
    description:
        "Finishing jahit tepi bukan necy. Bahan Diamond Italiano. Mudah diatur, tegak didahi, nyaman.",
    image: "assets/images/diamondScarf.png",
    color: Color(0xFFBCAAA4),
    colorType: "Pastel Blue, Green Bottle,\nMaroon",
  ),
  Hijab(
    id: 7,
    title: "Jeehan Khimar",
    price: 39000,
    size: "PD dari kepala 75cm PB 95cm",
    description:
        "Bahan Diamond Italiano. 1 Layer terdapat aksen ruffle dan lace. Bisa digunakan dengan 2 style",
    image: "assets/images/jeehanKhimar.png",
    color: Color(0xFF827717),
    colorType: "Turkish, Denim, Mustard,\nPastel Pink",
  ),
  Hijab(
    id: 8,
    title: "Khadijah Bergo",
    price: 90250,
    size: "",
    description: "bergo dengan aksen ruffle, menambah kesan elegan ",
    image: "assets/images/khadijahBergo.png",
    color: Color(0xFFD7CCC8),
    colorType: "Cappucino, Lavender,\nTurkish, Creamy",
  ),
  Hijab(
    id: 9,
    title: "Pashmina Ceruty",
    price: 30000,
    size: "12",
    description: "dummyText",
    image: "assets/images/pashminaCeruty.png",
    color: Color(0xFFF0F4C3),
    colorType: "",
  ),
  Hijab(
    id: 10,
    title: "Pashmina Plisket",
    price: 40000,
    size: "180*75cm",
    description:
        "Bahan babydoll ultimate. Hijab ini cocok sekali untuk acara yang formal maupun untuk sehari hari-hari atau traveling. Mudah diatur, tegak didahi, dan ringan dipakai.",
    image: "assets/images/pashminaPlisket.png",
    color: Color(0xFF4DD0E1),
    colorType: "Beige, Pale Pink, Grey,\nBroken White, Black",
  ),
  Hijab(
    id: 11,
    title: "Segiempat Instan",
    price: 35000,
    size: "115*115cm",
    description:
        "Bahan Diamond Italiano. Hijab instan tanpa pentul,  tinggal slupppp jadi deh.",
    image: "assets/images/segiempatInstan.png",
    color: Color(0xFFFBE9E7),
    colorType: "Matcha, Turkish, Grey,\nSoft Purple, Denim, Caramel",
  ),
  Hijab(
    id: 12,
    title: "Segiempat Lasercut",
    price: 30000,
    size: "115×115cm",
    description: "Bahan Polycotton. Finishing lasercut.",
    image: "assets/images/segiempatLasercut.png",
    color: Color(0xFFC62828),
    colorType: "Dusty Pink, Deep Mint, Creamy,\nFrappucino, Army",
  ),
  Hijab(
    id: 13,
    title: "Thisa Simple Ped",
    price: 27000,
    size: "M, L",
    description:
        "Bahan Diamond Italiano. Anti tembem, simple tinggal slup tanpa jarum, memiliki jahit bayangan dibagian dayu, memakai finishing jahit 2 garis.",
    image: "assets/images/thisaSimplePed.png",
    color: Color(0xFFB2DFDB),
    colorType: "Black, Denim, Navy, Mulberry,\nCreamy, Terracotta",
  ),
  Hijab(
    id: 14,
    title: "Zareena Bergo",
    price: 29900,
    size: "pd -+75cm pb -+85cm",
    description:
        "Zareena Bergo bahan Diamond Italiano. Jahitan double 2 garis, tali kecil dan rapi, kualitas butik,",
    image: "assets/images/zareenaBergo.png",
    color: Color(0xFF546E7A),
    colorType: "Caramel, Light Grey, Latte,\nMilo, Khaki",
  ),
];
