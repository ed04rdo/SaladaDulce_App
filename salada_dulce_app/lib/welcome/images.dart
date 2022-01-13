import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  final photo1 = Container(
      height: 340.0,
      width: 170.0,
      margin: EdgeInsets.only(top: 90.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            alignment: Alignment.centerRight,
            fit: BoxFit.cover,
            image: AssetImage("assets/img/IMG_6673.jpg")),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(120.0),
            topRight: Radius.circular(120.0)),
        shape: BoxShape.rectangle,
      ));

  final photo2 = Container(
    height: 280.0,
    width: 200.0,
    decoration: BoxDecoration(
      image: DecorationImage(
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
          image: AssetImage("assets/img/IMG_6776.jpg")),
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(150.0), topLeft: Radius.circular(150.0)),
      shape: BoxShape.rectangle,
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 470,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [photo1, Spacer(), photo2],
      ),
    );
  }
}
