import 'package:flutter/material.dart';
import 'package:salada_dulce_app/item_page/items_list.dart';

class ItemsPage extends StatelessWidget {
  String categoria;

  ItemsPage(this.categoria);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: [ItemsList()],
    ));
  }
}
