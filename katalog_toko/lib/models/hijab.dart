// import 'package:flutter/material.dart';

// class Hijab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Hijab"),
//         backgroundColor: Colors.redAccent.shade400,
//       ),
//       body: new ListView(
//         children: <Widget>[
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 1"),
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 2"),
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 3"),
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 4"),
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 5"),
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 6"),
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 7"),
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 8"),
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 9"),
//           // new ListHijab("assets/images/mukena/mukena1.jpg", "Hijab 10"),
//         ],
//       ),
//     );
//   }
// }

// class ListHijab extends StatelessWidget {
//   ListHijab(this.image, this.title);

//   final String image;
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       decoration: const BoxDecoration(
//         border: Border(
//           top: BorderSide(width: 1.0, color: Colors.red),
//           left: BorderSide(width: 1.0, color: Colors.red),
//           right: BorderSide(width: 1.0, color: Colors.red),
//           bottom: BorderSide(width: 1.0, color: Colors.red),
//         ),
//       ),
//       padding: EdgeInsets.only(top: 15, bottom: 15),
//       margin: EdgeInsets.all(10),
//       child: new Column(
//         children: <Widget>[
//           new Container(
//             child: new ListTile(
//               leading: new Image.asset(
//                 image,
//                 width: 100,
//                 height: 300,
//                 fit: BoxFit.cover,
//               ),
//               title: new Text(title),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';

class Hijab {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Hijab({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Hijab> hijabs = [
  Hijab(
    id: 1,
    title: "Hijab Rayon",
    price: 71250,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaRayon.png",
    color: Color(0xFFF06292),
  ),
  Hijab(
    id: 2,
    title: "Hijab Jumbo Hyget",
    price: 57000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaJumbo.png",
    color: Color(0xFFD7CCC8),
  ),
  Hijab(
    id: 3,
    title: "Mukena Katun Rosella",
    price: 125000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaKatunRosella.png",
    color: Color(0xFFB9F6CA),
  ),
  Hijab(
    id: 4,
    title: "Mukena Katun Tie Dye",
    price: 68000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaKatunTieDye.png",
    color: Color(0xFF80D8FF),
  ),
  Hijab(
    id: 5,
    title: "Mukena Renda Rajut",
    price: 75110,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaRenda.png",
    color: Color(0xFFFF4081),
  ),
  Hijab(
    id: 6,
    title: "Mukena Fatimah Khadijah",
    price: 141500,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaFatimah.png",
    color: Color(0xFFD50000),
  ),
  Hijab(
    id: 7,
    title: "Mukena Shireen Renda",
    price: 150000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaShireen.png",
    color: Color(0xFFFFA726),
  ),
  Hijab(
    id: 8,
    title: "Mukena Bordir Renda",
    price: 90250,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaBordir.png",
    color: Color(0xFF795548),
  ),
  Hijab(
    id: 9,
    title: "Mukena Anak / Rayon",
    price: 120000,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaAnak1.png",
    color: Color(0xFF43A047),
  ),
  Hijab(
    id: 10,
    title: "Mukena Anak Daydream",
    price: 99900,
    size: 12,
    description: "dummyText",
    image: "assets/images/mukenaAnak2.png",
    color: Color(0xFF42A5F5),
  ),
];
