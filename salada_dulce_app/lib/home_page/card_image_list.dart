import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:salada_dulce_app/home_page/card_image.dart';

class CardImageList extends StatelessWidget {
  String descripcion1 =
      "Sándwich de pan integral, rebanado en 4 partes. Con queso amarillo,"
      "jamón de pierna o pavo, cebolla, rajas, lechuga y jitomate. \n\n"
      "ACOMPAÑA TU ELECCIÓNCON DOS GUARNICIONES A ELEGIR:\n\n"
      "Ensalada de manzana, ensalada de zanahoria, fresas con crema, spaghetti "
      "poblano, spaghetti con crema y jamón, spaghetti al ajillo, codito con crema, "
      "codito con atún, papas a la alemana, papas a la francesa, verdura al vapor, "
      "ensalada de lechuga con frutas, ensalada rusa.";
  String descripcion2 =
      "Todos nuestros baguettes, cuernitos y el sándwich integral tienen pan 100% integral"
      " con mayonesa, jitomate, aguacate, lechuga y queso panela.\n\n"
      "ACOMPAÑA TU ELECCIÓNCON DOS GUARNICIONES A ELEGIR:\n\n"
      "Ensalada de manzana, ensalada de zanahoria, fresas con crema, spaghetti poblano, "
      "spaghetti con crema y jamón, spaghetti al ajillo, codito con crema, codito con atún, "
      "papas a la alemana, papas a la francesa, verdura al vapor, ensalada de lechuga con frutas, ensalada rusa.";
  String descripcion3 = "3 Hot-cakes recién hechos acompañados con:\n\n"
      "Mermelada,miel,cajeta o lechera.";
  String descripcion4 =
      "Tortilla de harina de 22 cm aproximadamente rellena de pollo o bistec.\n\n"
      "ACOMPAÑA TU ELECCIÓNCON DOS GUARNICIONES A ELEGIR:\n\n"
      "Ensalada de manzana, ensalada de zanahoria, fresas con crema, spaghetti poblano, spaghetti con crema y jamón, "
      "spaghetti al ajillo, codito con crema, codito con atún, papas a la alemana, papas a la francesa, verdura al vapor, "
      "ensalada de lechuga con frutas, ensalada rusa.";
  String descripcion5 =
      "Todas nuestras ensaladas cuentan con una base de verdura cruda, cocida, sopa de codito, ensalada rusa "
      "y spaghetti. La ensalada mixta está cubierta con camarones, atún, pechuga rellena y filete de pescado.";
  String descripcion6 =
      "Todas nuestras ensaladas cuentan con una base de verdura cruda, cocida, sopa de codito, ensalada rusa"
      " y spaghetti. Cubierta con pechuga de pollo empanizada rellena de jamón y queso.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 320.0,
        child: ListView(
          padding: EdgeInsets.only(bottom: 50, right: 30),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardImage("assets/img/IMG_6449.jpg", "Club \nSándwich",
                descripcion1, 75.00),
            CardImage("assets/img/IMG_6457.jpg", "Baguette de\nPechuga",
                descripcion2, 65.00),
            CardImage(
                "assets/img/IMG_6474.jpg", "Hot\nCakes", descripcion3, 90.00),
            CardImage(
                "assets/img/IMG_6494.jpg", "Burrito", descripcion4, 80.00),
            CardImage("assets/img/IMG_6675.jpg", "Ensalada\nMixta",
                descripcion5, 85.00),
            CardImage("assets/img/IMG_6663.jpg", "Ensalada de\nPechuga Rellena",
                descripcion6, 60.00)
          ],
        ));
  }
}
