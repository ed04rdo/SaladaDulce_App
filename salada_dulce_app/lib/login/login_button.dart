import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:salada_dulce_app/login/login_screen.dart';
import 'package:salada_dulce_app/login/bloc_user.dart';

class LoginButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginButton();
  }
}

class _LoginButton extends State<LoginButton> {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of(context);
    return InkWell(
        onTap: () {
          userBloc.signOut();
          userBloc
              .signIn()
              .then((User) => print("Usuario ${User?.displayName}"));
        },
        child: Center(
            child: Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          height: 40.0,
          width: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xFF09B44D)),
          child: Center(
            child: Text(
              "Login with Gmail",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )));
  }
}
