import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:salada_dulce_app/home_app/home_app.dart';
import 'package:salada_dulce_app/login/back_gradient.dart';
import 'package:salada_dulce_app/login/bloc_user.dart';
import 'package:salada_dulce_app/login/login_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: UserBloc().authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData || snapshot.hasError) {
          return loginGoogleUI();
        } else {
          return HomeApp();
        }
      },
    );
  }

  Widget loginGoogleUI() {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        BackGradient("", MediaQuery.of(context).size.height),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Salada & Dulce\nIniciar Sesión\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            LoginButton()
          ],
        )
      ],
    ));
  }
}
