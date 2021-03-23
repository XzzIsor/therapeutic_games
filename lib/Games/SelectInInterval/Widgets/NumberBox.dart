import 'package:flutter/material.dart';
import 'package:therapeutic_games/Games/SelectInInterval/Widgets/NumberContainer.dart';

class NumberBox extends StatefulWidget {
  final int number;
  const NumberBox({Key key, @required this.number}) : super(key: key);

  @override
  _NumberBoxState createState() => _NumberBoxState();
}

class _NumberBoxState extends State<NumberBox> {
  Widget _uwu;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .45;

    if (_uwu == null) {
      _uwu = _boxChild(width);
    }

    return Draggable<int>(
      onDragCompleted: () {
        setState(() {
          _uwu = _childWhenD(width);
        });
      },
      data: widget.number,
      childWhenDragging: _childWhenD(width),
      feedback: NumberContainer(
        width: width,
        number: widget.number,
      ),
      child: _uwu,
    );
  }

  Widget _boxChild(double width) {
    return NumberContainer(width: width, number: widget.number);
  }

  Widget _childWhenD(double width) {
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
  }
}
