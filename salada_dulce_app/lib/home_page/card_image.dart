import 'package:flutter/material.dart';
import 'package:salada_dulce_app/description_page/description_page.dart';
import 'package:salada_dulce_app/home_page/fav_button.dart';

class CardImage extends StatefulWidget {
  String imgPath;
  String producto;
  String descripcion;
  double precio;

  CardImage(this.imgPath, this.producto, this.descripcion, this.precio,
      {Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CardImage();
  }
}

class _CardImage extends State<CardImage> {
  void onPressed() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DescriptionPage(widget.imgPath,
                widget.producto, widget.descripcion, widget.precio)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = GestureDetector(
        onTap: onPressed,
        child: Container(
            height: 150.0,
            width: 320.0,
            margin: EdgeInsets.only(top: 90.0, left: 30.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.imgPath)),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 7.0))
                ])));
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[card, FavButton()],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
