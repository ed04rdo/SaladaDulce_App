import 'package:flutter/material.dart';
import 'package:salada_dulce_app/category_page/category_card_image.dart';

class CategoryCardImageList extends StatelessWidget {
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
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .15,
              bottom: 30,
              right: 30),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            CategoryCardImage(
                "assets/img/categorias/Ensaladas.jpg", "Ensaladas"),
            CategoryCardImage("assets/img/categorias/Baguetts.jpg", "Baguetts"),
            CategoryCardImage(
                "assets/img/categorias/Cuernitos.jpg", "Cuernitos"),
            CategoryCardImage(
                "assets/img/categorias/Hamburguesas.jpg", "Hamburguesas"),
            CategoryCardImage(
                "assets/img/categorias/Agregados.jpg", "Agregados"),
            CategoryCardImage("assets/img/categorias/Fuertes.jpg", "Fuertes"),
            CategoryCardImage("assets/img/categorias/Bebidas.jpg", "Bebidas"),
            CategoryCardImage("assets/img/categorias/Postres.jpg", "Postres")
          ],
        ));
  }
}
