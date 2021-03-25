import 'package:flutter/material.dart';
import '../SelectIntervalProvider.dart';
import 'NumberBox.dart';

class DragContainer extends StatefulWidget {
  DragContainer({Key key}) : super(key: key);

  @override
  _DragContainerState createState() => _DragContainerState();
}

class _DragContainerState extends State<DragContainer> {
  SelecIntervalProvider provider = SelecIntervalProvider.instance;

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
            NumberBox(index:0),
            NumberBox(index:1),
            NumberBox(index:2),
            NumberBox(index:3),
          ],
        ),
        Column(
          children: [
            NumberBox(index:4),
            NumberBox(index:5),
            NumberBox(index:6),
            NumberBox(index:7),
          ],
        ),
        
      ],),
    );
  }
}
