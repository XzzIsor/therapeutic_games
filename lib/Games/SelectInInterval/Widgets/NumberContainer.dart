import 'package:flutter/material.dart';



class NumberContainer extends StatelessWidget {
  final double width;
  final  int number;
  NumberContainer({@required this.width, @required this.number});

  @override
  Widget build(BuildContext context) {
  
    return Container(
        height: 40,
        width: width,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color.fromRGBO(223, 243, 246, 1),
            // Red border with the width is equal to 5
            border: Border.all(
              width: 2,
              color: Color.fromRGBO(103, 208, 224, 1),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
            child: Text(
              "$number",
              style: TextStyle(decoration: TextDecoration.none, fontSize: 20),
        )));
  }
}
