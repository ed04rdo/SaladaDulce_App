import 'package:flutter/material.dart';

class BackGradient extends StatelessWidget {
  String title;
  double pixelHeight;

  BackGradient(this.title, this.pixelHeight);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.topCenter,
      height: pixelHeight,
      decoration: BoxDecoration(color: Color(0xFFF0C334)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
