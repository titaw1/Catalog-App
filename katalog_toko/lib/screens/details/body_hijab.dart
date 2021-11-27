import 'package:flutter/material.dart';
import 'package:katalog_toko/constants.dart';
import 'package:katalog_toko/models/hijab.dart';
import 'package:url_launcher/url_launcher.dart';

class HijabDetail extends StatelessWidget {
  final Hijab hijab;

  const HijabDetail({Key? key, required this.hijab}) : super(key: key);

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Warna : \n",
                                ),
                                Container(
                                  child: Text(hijab.colorType),
                                  padding: EdgeInsets.all(2.5),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: kTextColor),
                                children: [
                                  TextSpan(text: "Ukuran : \n\n"),
                                  TextSpan(
                                      text: hijab.size,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Text(
                          hijab.description,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18)),
                                  color: Color(int.parse(hijab.color)),
                                  onPressed: () => _launchURL(
                                      "https://api.whatsapp.com/send?phone=6281xxxxxxxxx&text=~%20Silakan%20isi%20format%20pemesanan%20dengan%20lengkap%20~%20%0ANama%20:%20%0AAlamat%20:%20%0ANama%20Barang%20:%20%0AWarna%20:%20%0AJumlah%20:%20%0A~%20Selamat%20Berbelanja%20~"),
                                  child: Text(
                                    "Beli Sekarang".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                HijabTitleImage(hijab: hijab)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HijabTitleImage extends StatelessWidget {
  const HijabTitleImage({
    Key? key,
    required this.hijab,
  }) : super(key: key);

  final Hijab hijab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            hijab.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultPadding * 1.6,
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Harga\n"),
                    TextSpan(
                      text: "\Rp${hijab.price}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: Image.asset(
                  hijab.image,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
