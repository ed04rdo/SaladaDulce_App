import 'package:flutter/material.dart';
import 'package:salada_dulce_app/user_data/user.dart';

class UserInfo extends StatelessWidget {
  User user;

  UserInfo(this.user, {Key? key}) : super(key: key);

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
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(user.photoURL))),
    );

    final userInfo = Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 15, bottom: 5.0),
            child: Text(user.nombre,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Syne',
                ))),
        Text(user.email,
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
