import 'package:flutter/material.dart';

class CustomTarget extends StatefulWidget {

  @override
  _CustomTargetState createState() => _CustomTargetState();
}

class _CustomTargetState extends State<CustomTarget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width *.45;
    return  DragTarget<Widget>(
            builder: (context, List<Widget> candidateData, List<dynamic> rejectedData ){
              return Container(
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
                ); 
            },
            
            onWillAccept: (widget){

            },
            onAccept: (widget) { 
              setState(() {
                                
              });

            },
            
            
            
            
    );
  }
}