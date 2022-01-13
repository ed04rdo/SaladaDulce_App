import 'package:flutter/material.dart';
import 'package:salada_dulce_app/promo_page/promo_page.dart';

class PromoCard extends StatelessWidget {
  String imgPath;
  String promo;
  String promoItem;
  String promoDesc;

  PromoCard(this.imgPath, this.promo, this.promoItem, this.promoDesc,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final img = Padding(
        padding: EdgeInsets.only(left: 5),
        child: ClipOval(
            // Image border
            child: SizedBox.fromSize(
                size: Size.fromRadius(48), // Image radius
                child: Image(
                  image: AssetImage(imgPath),
                ))));

    final txt1 = Text(
      promoItem,
      style: TextStyle(
          color: Color(0xFFF0C334),
          fontFamily: "Syne",
          fontSize: 25,
          fontWeight: FontWeight.bold),
    );

    final txt2 = Text(
      promo,
      style: TextStyle(
          color: Color(0xFFF0C334),
          fontFamily: "Syne",
          fontSize: 50,
          fontWeight: FontWeight.bold),
    );

    // TODO: implement build
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PromoPage(imgPath, promoDesc, promo)),
          );
        },
        child: Container(
            height: 130.0,
            width: 380.0,
            margin: EdgeInsets.only(top: 20.0, left: 20.0),
            decoration: BoxDecoration(
                color: Color(0xFFD0F1DD),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 7.0))
                ]),
            child: Row(
                children: [img, Spacer(), txt1, Spacer(), txt2, Spacer()])));
  }
}
