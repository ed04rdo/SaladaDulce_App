import 'package:flutter/material.dart';
import 'package:salada_dulce_app/login/login_screen.dart';

class GoButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GoButton();
  }
}

class _GoButton extends State<GoButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Center(
            child: Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          height: 70.0,
          width: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xFF09B44D)),
          child: Center(
              child: Text(
            "GO",
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
        )));
  }
}
