
import 'dart:math';

import 'package:flutter/material.dart';

import 'NumberBox.dart';

class DragContainer extends StatefulWidget {
  DragContainer({Key key}) : super(key: key);

  @override
  _DragContainerState createState() => _DragContainerState();
}

class _DragContainerState extends State<DragContainer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height *.4;
    return Container(
      width: double.infinity,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Column(
          children: [
            NumberBox(number: Random().nextInt(100)),
            NumberBox(number: Random().nextInt(100)),
            NumberBox(number: Random().nextInt(100)),
            NumberBox(number: Random().nextInt(100)),
          ],
        ),
        Column(
          children: [
            NumberBox(number: Random().nextInt(100)),
            NumberBox(number: Random().nextInt(100)),
            NumberBox(number: Random().nextInt(100)),
            NumberBox(number: Random().nextInt(100)),
          ],
        ),
        
      ],),
    );
  }
}
