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
            NumberBox(number: provider.options[0]),
            NumberBox(number: provider.options[1]),
            NumberBox(number: provider.options[2]),
            NumberBox(number: provider.options[3]),
          ],
        ),
        Column(
          children: [
            NumberBox(number: provider.options[4]),
            NumberBox(number: provider.options[5]),
            NumberBox(number: provider.options[6]),
            NumberBox(number: provider.options[7]),
          ],
        ),
        
      ],),
    );
  }
}
