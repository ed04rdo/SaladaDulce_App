import 'package:flutter/material.dart';
import 'package:salada_dulce_app/home_page/promo_card.dart';

class PromoPage extends StatelessWidget {
  String imgPath;
  String promoDesc;
  String promo;

  PromoPage(this.imgPath, this.promoDesc, this.promo);

  @override
  Widget build(BuildContext context) {
    final backImgContainer = Container(
        height: 450,
        child: Image(
          image: AssetImage(imgPath),
          fit: BoxFit.fitHeight,
        ));

    final listoButton = Positioned(
        left: (MediaQuery.of(context).size.width / 2) - 40,
        bottom: 20,
        child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 45.0,
              width: 80.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Color(0xFF09B44D)),
              child: Center(
                  child: Text(
                "Listo",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            )));

    final promoAd = Center(
      child: Text(
        promo,
        style: TextStyle(
            color: Color(0xFFF0C334),
            fontFamily: "Syne",
            fontSize: 80,
            fontWeight: FontWeight.bold),
      ),
    );

    final promoDescription = Expanded(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                promoDesc,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Color(0xFFF0C334),
                    fontFamily: "Syne",
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            )));

    final infoContainer = Container(
        height: 450.0,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 400.0),
        decoration: BoxDecoration(
            color: Color(0xFFD0F1DD),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]),
        child: Column(children: <Widget>[
          promoAd,
          promoDescription,
          Container(
            height: 80,
          )
        ]));

    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: [backImgContainer, infoContainer, listoButton],
    ));
  }
}
