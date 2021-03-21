import 'package:flutter/material.dart';

class CustomTarget extends StatefulWidget {
  @override
  _CustomTargetState createState() => _CustomTargetState();
}

class _CustomTargetState extends State<CustomTarget> {
  Widget _widget;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .45;
    return DragTarget<Widget>(
      builder:
          (context, List<Widget> candidateData, List<dynamic> rejectedData) {
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
      onWillAccept: (widget) {
        return true;
      },
      onAccept: (wid) {
        setState(() {
          _widget = wid;
        });
      },
    );
  }
}
