import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/models/baju_atasan.dart';
import 'package:katalog_toko/models/celana.dart';
import 'package:katalog_toko/models/dress.dart';
import 'package:katalog_toko/models/hijab.dart';
import 'package:katalog_toko/models/one_set.dart';
import 'package:katalog_toko/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Future Function() press;
  const ItemCard({
    Key? key,
    required this.product,
    required Future Function() this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: kDefaultPadding / 2),
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Color(int.parse(product.color)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              product.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title,
            ),
          ),
          Text(
            "\Rp${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ItemCard2 extends StatelessWidget {
  final Hijab hijab;
  final Future Function() press;
  const ItemCard2({
    Key? key,
    required this.hijab,
    required Future Function() this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: kDefaultPadding / 2, bottom: kDefaultPadding / 2),
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Color(int.parse(hijab.color)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: new ListTile(
              leading: new Image.asset(
                hijab.image,
                width: 65,
              ),
              title: Column(
                children: <Widget>[
                  new Text(
                    hijab.title,
                  ),
                  Text(
                    "\Rp${hijab.price}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemCard3 extends StatelessWidget {
  final OneSet oneSet;
  final Function press;
  const ItemCard3({
    Key? key,
    required this.oneSet,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: kDefaultPadding / 2),
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: Color(int.parse(oneSet.color)),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            oneSet.image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            oneSet.title,
          ),
        ),
        Text(
          "\Rp${oneSet.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ItemCard4 extends StatelessWidget {
  final Dress dress;
  final Function press;
  const ItemCard4({
    Key? key,
    required this.dress,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: kDefaultPadding / 2, bottom: kDefaultPadding / 2),
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: Color(int.parse(dress.color)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: new ListTile(
            leading: new Image.asset(
              dress.image,
              width: 65,
            ),
            title: Column(
              children: <Widget>[
                new Text(
                  dress.title,
                ),
                Text(
                  "\Rp${dress.price}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ItemCard5 extends StatelessWidget {
  final Celana celana;
  final Function press;
  const ItemCard5({
    Key? key,
    required this.celana,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: kDefaultPadding / 2),
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: Color(int.parse(celana.color)),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(
            celana.image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text(
            celana.title,
          ),
        ),
        Text(
          "\Rp${celana.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ItemCard6 extends StatelessWidget {
  final BajuAtasan bajuAtasan;
  final Function press;
  const ItemCard6({
    Key? key,
    required this.bajuAtasan,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: kDefaultPadding / 2, bottom: kDefaultPadding / 2),
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: Color(int.parse(bajuAtasan.color)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: new ListTile(
            leading: new Image.asset(
              bajuAtasan.image,
              width: 65,
            ),
            title: Column(
              children: <Widget>[
                new Text(
                  bajuAtasan.title,
                ),
                Text(
                  "\Rp${bajuAtasan.price}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
