import 'package:flutter/material.dart';
import 'package:salada_dulce_app/home_page/back_gradient.dart';
import 'package:salada_dulce_app/home_page/card_image_list.dart';
import 'package:salada_dulce_app/home_page/promo_card.dart';
import 'package:salada_dulce_app/home_page/promo_card_list.dart';

class HomePage extends StatelessWidget {
  final containerVerde = Container(
    margin: EdgeInsets.only(left: 250, top: 70),
    height: 5,
    width: 150,
    color: Color(0xFF09B44D),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Stack(children: <Widget>[
        BackGradient("Popular", 200, 0xFFF0C334),
        containerVerde,
        CardImageList(),
        Container(
          padding: EdgeInsets.only(top: 320, left: 20),
          child: Text(
            "Promociones",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 365),
          child: PromoCardList(),
        )
      ]),
    ]);
  }
}
