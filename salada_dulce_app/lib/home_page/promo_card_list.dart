import 'package:flutter/material.dart';
import 'package:salada_dulce_app/home_page/promo_card.dart';

class PromoCardList extends StatelessWidget {
  String promo1 =
      "Llévate 2 ricos club Sándwiches al costo de uno. Sándwich de pan integral, rebanado en 4 partes. Con queso amarillo, jamón de pierna o pavo, cebolla, rajas, lechuga y jitomate. Para esas ocasiones especiales donde nos reunimos para celebrar y compartir con los demás."
      "\n\nNo dejes pasar la oportunidad de chuparte los dedos, garantizamos que tu paladar lo agradecerá."
      "\n\nPromoción válida del 13 de enero del 2022 al 13 de marzo del 2022.";
  String promo2 = "Rico baguette de pechuga rellena con el 15% de descuento."
      "\n\nTodos nuestros baguettes, cuernitos y el sándwich integral tienen pan 100% integral con mayonesa, jitomate, aguacate, lechuga y queso panela."
      "¡Llego el momento de disfrutar! Estamos seguros que no te arrepentirás"
      "\n\nPromoción válida del 13 de enero del 2022 al 13 de marzo del 2022.";
  String promo3 = "Desayuno Buffet de 9 a 12hrs a tan solo \$199."
      "\n\nIncluye jugo de naranja, café, platillo o platillos a elegir, ya sea huevos al gusto o chilaquiles y pan dulce."
      "\n\nSi la rutina diaria te impide comer sanamente tenemos una solución para ti, recuerda que un buen desayuno da energía para el día a día."
      "\n\n¡Llego el momento de desayunar";
  String promo4 =
      "Deliciosas ensaladas al 30% de descuento para disfrutar individualmente o con la familia. Una ensalada a elegir. Disfruta de una vida saludable."
      "\n\nTodas las ensaladas tienen una base de verdura cruda, cocida, sopa de codito, ensalada rusa, spaghetti y la proteína que elijas."
      "\n\n¡No esperes más para cambiar tus hábitos nutricionales, cuidamos tu salud!"
      "\n\nPromoción válida del 13 de enero del 2022 al 13 de marzo del 2022.";
  String promo5 = "¡Para endulzar tu paladar! Postres al 20% de descuento. "
      "Un solo postre para elegir: Ensalada de manzana, fresas con crema, ensalada de zanahoria, rebanada de pastel imposible, rebanada de pastel napolitano, rebanada de cheesecake"
      "\n\nSi el amor es dulce imagínate un postre para acompañarlo; no te quedes fuera de esta promoción y compártela con tus seres queridos"
      "\n\nPromoción válida del 13 de enero del 2022 al 13 de marzo del 2022.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 400.0,
        child: ListView(
          padding: EdgeInsets.only(bottom: 50, right: 30),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            PromoCard(
                "assets/img/IMG_6449.jpg", "2x1", "Club\nSandwich", promo1),
            PromoCard("assets/img/IMG_6457.jpg", "15%", "Baguetts", promo2),
            PromoCard(
                "assets/img/IMG_6474.jpg", "\$199", "Desayuno\nBuffet", promo3),
            PromoCard("assets/img/IMG_6675.jpg", "30%", "Ensaladas", promo4),
            PromoCard("assets/img/IMG_6781.jpg", "20%", "Postres", promo5)
          ],
        ));
  }
}
