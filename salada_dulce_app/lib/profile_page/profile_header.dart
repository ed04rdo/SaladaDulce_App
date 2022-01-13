import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:salada_dulce_app/login/bloc_user.dart';
import 'package:salada_dulce_app/profile_page/user_info.dart';

class ProfileHeader extends StatelessWidget {
  late UserBloc userBloc;
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
            return null;
        }
      },
    );
    /*return Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Row(
          children: <Widget>[
            Spacer(),
            UserInfo('assets/img/foto de perfil.jpeg', 'Eduardo Ruiz Aguilar',
                'eduardo.ra.04@gmail.com'),
            Spacer()
          ],
        ));*/
  }
}
