import 'package:flutter/material.dart';
import 'package:salada_dulce_app/welcome/go_button.dart';
import 'package:salada_dulce_app/welcome/images.dart';
import 'package:salada_dulce_app/welcome/title.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [TitleWelcomePage(), Images(), GoButton()],
    );
  }
}
