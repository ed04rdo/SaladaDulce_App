import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:salada_dulce_app/login/bloc_user.dart';
import 'package:salada_dulce_app/login/login_screen.dart';
import 'package:salada_dulce_app/welcome/go_button.dart';
import 'package:salada_dulce_app/welcome/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(body: WelcomePage() // WelcomePage(),
            ),
        debugShowCheckedModeBanner: false,
      ),
      bloc: UserBloc(),
    );
  }
}
