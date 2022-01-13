import 'package:flutter/material.dart';

class TitleWelcomePage extends StatelessWidget {
  final salada = Container(
    margin: EdgeInsets.only(left: 40, top: 10),
    child: Text(
      "Salada",
      style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          fontSize: 50,
          color: Color(0xFFF0C334)),
    ),
  );

  final ampersand = Container(
    margin: EdgeInsets.only(left: 80, top: 80),
    child: Text(
      "&",
      style:
          TextStyle(fontFamily: "Syne", fontSize: 50, color: Color(0xFF262626)),
    ),
  );

  final dulce = Container(
    margin: EdgeInsets.only(left: 140, top: 60),
    child: Text(
      "Dulce",
      style:
          TextStyle(fontFamily: "Syne", fontSize: 88, color: Color(0xFF262626)),
    ),
  );

  final containerVerde = Container(
    margin: EdgeInsets.only(left: 340, top: 65),
    height: 5,
    width: 70,
    color: Color(0xFF09B44D),
  );

  final containerAmarillo = Container(
    margin: EdgeInsets.only(left: 280, top: 65),
    height: 5,
    width: 80,
    color: Color(0xFFF0C334),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 160,
      width: 500,
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [salada, ampersand, dulce, containerAmarillo, containerVerde],
      ),
    );
  }
}
