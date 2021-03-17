import 'package:flutter/material.dart';

class NumberBox extends StatelessWidget {
  final int number;
  const NumberBox({Key key, @required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width *.45;
    return Draggable<Widget>(
      childWhenDragging: Container(
          height: 40,
          width: width,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.grey,
              // Red border with the width is equal to 5
              border: Border.all(
                width: 2,
            
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          
        ),
      feedback: Container(
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
              "20",
              style: TextStyle(decoration: TextDecoration.none, fontSize: 20),
      ))),
        child:  Container(
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
              "20",
              style: TextStyle(decoration: TextDecoration.none, fontSize: 20),
      ))),); 
    
  }
}
