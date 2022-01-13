import 'package:flutter/material.dart';

class BackGradient extends StatelessWidget {
  String title;
  double pixelHeight;
  int hexColor;

  BackGradient(this.title, this.pixelHeight, this.hexColor);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        alignment: Alignment.topLeft,
        height: pixelHeight,
        decoration: BoxDecoration(color: Color(hexColor)),
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
