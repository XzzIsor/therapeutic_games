import 'dart:math';

import 'package:flutter/material.dart';

class NumberBox extends StatelessWidget {
  final int number;
  const NumberBox({Key key, @required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool gris = false;
    if (number > 255) {
      gris = true;
    }

    return Container(
      height:100,
      width: 100,
      color: !gris ? Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255), 1) : Colors.grey,
      child: Center(child:Text("20" , style: TextStyle(decoration: TextDecoration.none, fontSize: 20),)) 
    );
  }
}
