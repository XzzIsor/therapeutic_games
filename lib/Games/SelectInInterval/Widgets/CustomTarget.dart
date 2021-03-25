import 'package:flutter/material.dart';
import 'package:therapeutic_games/Games/SelectInInterval/SelectIntervalProvider.dart';
import 'package:therapeutic_games/Games/SelectInInterval/Widgets/NumberContainer.dart';

class CustomTarget extends StatefulWidget {
  @override
  _CustomTargetState createState() => _CustomTargetState();
}

class _CustomTargetState extends State<CustomTarget> {
  SelecIntervalProvider provider = SelecIntervalProvider.instance;
  Widget _widget;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .45;
    return DragTarget<int>(
      builder: (context, List<int> candidateData, List<dynamic> rejectedData) {
        //print(_widget);
        //print(candidateData);
        return _widget != null
            ? _widget
            : Container(
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
      onWillAccept: (number) {
        if (number > provider.limits[0]) {
          return false; 
        }
        return true;
      },
      onAccept: (number) {
        setState(() {
          _widget = NumberContainer(width: width, number: number);
        });
      },
    );
  }
}
