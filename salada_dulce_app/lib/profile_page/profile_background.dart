import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        width: screenWidth,
        height: screenHeight * 0.45,
        color: Color(0xFFF0C334),
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20),
          child: Text(
            "Mi Perfil",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
