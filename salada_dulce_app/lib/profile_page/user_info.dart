import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  String imgPerfil;
  String nombre;
  String email;

  UserInfo(this.imgPerfil, this.nombre, this.email);

  @override
  Widget build(BuildContext context) {
    final userPhoto = Container(
      width: 100.0,
      height: 100.0,
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, width: 2.0, style: BorderStyle.solid),
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(imgPerfil))),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 15, bottom: 5.0),
            child: Text(nombre,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Syne',
                ))),
        Text(email,
            style: TextStyle(
                fontSize: 15.0, color: Colors.white70, fontFamily: 'Syne')),
      ],
    );

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
      child: Column(
        children: <Widget>[userPhoto, userInfo],
      ),
    );
  }
}
