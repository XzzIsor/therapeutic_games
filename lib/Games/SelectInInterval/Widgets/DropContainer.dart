
import 'package:flutter/material.dart';

class DropContainer extends StatefulWidget {


  @override
  _DropContainerState createState() => _DropContainerState();
}

class _DropContainerState extends State<DropContainer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height *.4;
    return Container(
      width: double.infinity,
      height: height,
      
      decoration: BoxDecoration(
        
        color: Colors.white,
        // Red border with the width is equal to 5
        border: Border.all(
            width: 10, 
            color: Color.fromRGBO(114,211,227,1)
      )),
      child: Center(child:Text("dasd")),
    );
  }
}
