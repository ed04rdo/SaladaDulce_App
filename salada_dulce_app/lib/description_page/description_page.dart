import 'package:flutter/material.dart';
import 'package:salada_dulce_app/description_page/counter.dart';

class DescriptionPage extends StatelessWidget {
  String imgPath;
  String producto;
  String descripcion;
  double precio;

  DescriptionPage(this.imgPath, this.producto, this.descripcion, this.precio);

  @override
  Widget build(BuildContext context) {
    final backImgContainer = Container(
        height: 450,
        child: Image(
          image: AssetImage(imgPath),
          fit: BoxFit.fitHeight,
        ));

    final aniadirButton = Positioned(
        left: 20,
        bottom: 20,
        child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 45.0,
              width: 80.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Color(0xFF09B44D)),
              child: Center(
                  child: Text(
                "Añadir",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            )));

    final nombreProducto = Padding(
        padding: EdgeInsets.only(left: 20, top: 15),
        child: Text(
          producto,
          style: TextStyle(
              color: Color(0xFFF0C334),
              fontFamily: "Syne",
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ));

    final descripcionProducto = Expanded(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                descripcion,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Color(0xFFF0C334),
                    fontFamily: "Syne",
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            )));

    final infoContainer = Container(
        height: 450.0,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 400.0),
        decoration: BoxDecoration(
            color: Color(0xFFD0F1DD),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              nombreProducto,
              descripcionProducto,
              Container(
                height: 90,
              )
            ]));
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: [
        backImgContainer,
        infoContainer,
        aniadirButton,
        Counter(precio)
      ],
    ));
  }
}
