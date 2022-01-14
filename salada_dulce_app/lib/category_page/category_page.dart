import 'package:flutter/material.dart';
import 'package:salada_dulce_app/category_page/category_card_image_list.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final background = Container(
        width: screenWidth,
        height: screenHeight * 0.15,
        color: Color(0xFF09B44D),
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20),
          child: Text(
            "Categorias",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
        ));

    final containerAmarillo = Container(
      margin: EdgeInsets.only(left: 250, top: 70),
      height: 5,
      width: 150,
      color: Color(0xFFF0C334),
    );

    return Stack(children: [
      CategoryCardImageList(),
      background,
      containerAmarillo,
    ]);
  }
}
