import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/screens/hal_kategori.dart';

void main() {
  runApp(new MaterialApp(
    home: new halamanUtama(),
  ));
}

class halamanUtama extends StatefulWidget {
  const halamanUtama({
    Key? key,
  }) : super(key: key);

  @override
  _halamanUtamaState createState() => _halamanUtamaState();
}

class _halamanUtamaState extends State<halamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red.shade600,
        elevation: 0,
        leading: IconButton(
          icon: new Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: kDefaultPadding),
            height: size.height * 0.2,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                      bottom: 36 + kDefaultPadding),
                  height: size.height * 0.2 - 27,
                  decoration: BoxDecoration(
                    color: Colors.red.shade600,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Tita's Store Catalogue",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: Colors.white),
                      ),
                      Spacer(),
                      // Icon(Icons.collections, color: Colors.white),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: kDefaultPadding),
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.red.shade600.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "Cari",
                              hintStyle: TextStyle(
                                color: Colors.red.shade600.withOpacity(0.4),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.red.shade600.withOpacity(0.4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          TitleMoreButton(
            title: "Terlaris",
            press: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => halamanKategori()),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: kDefaultPadding),
            child: Row(
              children: <Widget>[
                Terlaris(
                    image: "assets/images/mukenaRayon.png",
                    text: "    Mukena Rayon"),
                Terlaris(
                    image: "assets/images/pashminaCeruty.png",
                    text: "  Pashmina Ceruty"),
                Terlaris(
                    image: "assets/images/sansoDress.png",
                    text: "      Sanso Dress"),
                Terlaris(
                    image: "assets/images/vestRajut.png",
                    text: "        Vest Rajut"),
              ],
            ),
          ),
          TitleMoreButton(
            title: "Rekomendasi",
            press: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => halamanKategori()),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: kDefaultPadding),
            child: Row(
              children: <Widget>[
                Terlaris(
                    image: "assets/images/andaraSet.png",
                    text: "       Andara Set"),
                Terlaris(
                    image: "assets/images/baggyPants.png",
                    text: "      Baggy Pants"),
                Terlaris(
                    image: "assets/images/longOuter.png",
                    text: "Long Outer Maple"),
                Terlaris(
                    image: "assets/images/leydraTunik.png",
                    text: "      Leydra Tunik"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Terlaris extends StatelessWidget {
  final String image, text;
  const Terlaris({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset(image),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red.shade100),
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Colors.red.shade600.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: text.toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TitleMoreButton extends StatelessWidget {
  final String title;
  final Future Function() press;
  const TitleMoreButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Recommend(text: title),
          Spacer(),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: press,
            child: Text(
              "More...",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red.shade600,
          )
        ],
      ),
    );
  }
}

class Recommend extends StatelessWidget {
  final String text;
  const Recommend({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(right: kDefaultPadding / 4),
                    height: 7,
                    color: Colors.red.withOpacity(0.1),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
