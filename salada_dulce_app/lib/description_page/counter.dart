import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  double precio;
  double subtotal = 0;
  Counter(this.precio, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Counter();
  }
}

class _Counter extends State<Counter> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
      widget.subtotal = widget.precio * this._n;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
      widget.subtotal = widget.precio * this._n;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 420, left: 250),
      child: Column(children: <Widget>[
        Row(children: <Widget>[
          FloatingActionButton(
            mini: true,
            onPressed: minus,
            child: Icon(Icons.remove, color: Colors.white),
            backgroundColor: Color(0xFF09B44D),
          ),
          Text('$_n',
              style: TextStyle(
                  fontFamily: "Syne",
                  fontSize: 40.0,
                  color: Color(0xFFF0C334))),
          FloatingActionButton(
            mini: true,
            onPressed: add,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Color(0xFF09B44D),
          ),
        ]),
        Spacer(),
        Text(
          "Subtotal: \n\$${widget.subtotal} MXN",
          style: TextStyle(
              fontFamily: "Syne", fontSize: 25.0, color: Color(0xFFF0C334)),
        ),
        Container(
          height: 20,
        )
      ]),
    );
  }
}
