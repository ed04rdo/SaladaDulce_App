import 'package:flutter/material.dart';
import 'package:salada_dulce_app/item_page/items_page.dart';

class CategoryCardImage extends StatefulWidget {
  String imgPath;
  String categoria;

  CategoryCardImage(this.imgPath, this.categoria, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CategoryCardImage();
  }
}

class _CategoryCardImage extends State<CategoryCardImage> {
  void onPressed() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ItemsPage(widget.categoria)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final txt = Center(
        child: Text(
      widget.categoria,
      style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 30,
          color: Color(0xFF194B38),
          fontWeight: FontWeight.bold),
    ));

    // TODO: implement build
    final card = GestureDetector(
        onTap: onPressed,
        child: Container(
            height: 150.0,
            width: 350.0,
            margin: EdgeInsets.only(top: 40.0, left: 30.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(widget.imgPath)),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  color: Colors.grey[300]?.withOpacity(0.5),
                  border: Border.all(color: Colors.grey, width: 2)),
              child: txt,
            )));
    return card;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
