import 'package:flutter/material.dart';
import 'package:salada_dulce_app/home_page/home_page.dart';
import 'package:salada_dulce_app/login/bloc_user.dart';
import 'package:salada_dulce_app/profile_page/profile_page.dart';
import 'package:salada_dulce_app/category_page/category_page.dart';

class HomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeApp();
  }
}

class _HomeApp extends State<HomeApp> {
  int indexTap = 0;

  final List<Widget> widgetChildren = [
    HomePage(),
    CategoryPage(),
    ProfilePage()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: widgetChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting, // Shifting
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[350],
              iconSize: 30,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "",
                  backgroundColor: Color(0xFFF0C334),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: "",
                  backgroundColor: Color(0xFF09B44D),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "",
                  backgroundColor: Color(0xFFF0C334),
                )
              ]),
        ));
  }
}
