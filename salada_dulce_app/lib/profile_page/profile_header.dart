import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:salada_dulce_app/login/bloc_user.dart';
import 'package:salada_dulce_app/profile_page/user_info.dart';
import 'package:salada_dulce_app/user_data/user.dart';

class ProfileHeader extends StatelessWidget {
  late UserBloc userBloc;
  late User user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.done:
            return showProfileData(snapshot);
        }
      },
    );
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("NO LOGEADO");
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Row(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la información")
          ],
        ),
      );
    } else {
      print("LOGEADO");
      user = User(snapshot.data.displayName, snapshot.data.email,
          snapshot.data.photoURL);
      return Container(
          margin: EdgeInsets.only(top: 40.0),
          child: Row(
            children: <Widget>[Spacer(), UserInfo(user), Spacer()],
          ));
    }
  }
}
