import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:salada_dulce_app/login/bloc_user.dart';
import 'package:salada_dulce_app/profile_page/profile_header.dart';
import 'profile_background.dart';

class ProfilePage extends StatelessWidget {
  late UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    final botonSalir = GestureDetector(
        onTap: () {
          userBloc.signOut();
        },
        child: Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width - 100, top: 50),
            height: 40,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF09B44D),
            ),
            child: Center(
              child: Text(
                "Salir",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Syne", fontSize: 25),
                textAlign: TextAlign.center,
              ),
            )));

    // TODO: implement build
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            Row(
              children: [botonSalir],
            )
          ],
        )
      ],
    );
  }
}
