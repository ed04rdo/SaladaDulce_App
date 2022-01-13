import 'package:flutter/material.dart';

class User {
  final String nombre;
  final String email;
  final String photoURL;

  User(@required this.nombre, @required this.email, @required this.photoURL);
}
