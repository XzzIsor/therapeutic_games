








/// Flutter code sample for Draggable

// The following example has a [Draggable] widget along with a [DragTarget]
// in a row demonstrating an incremented `acceptedData` integer value when
// you drag the element to the target.

import 'package:flutter/material.dart';
import 'package:therapeutic_games/Games/SelectInInterval/SelectInInterval.dart';
// import 'package:therapeutic_games/Games/SelectInInterval/Widgets/NumberBox.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Games Repositorie';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Text("Games")),
        body: SelectInInterval(),
      ),
    );
  }
}

// /// This is the stateful widget that the main application instantiates.
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key key}) : super(key: key);
//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   Widget acceptedData = Container(
//     height: 100.0,
//     width: 100.0,
//     color: Colors.cyan,
//     child: Center(
//       child: Text('Value is updated'),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         Draggable<Widget>(
//           // Data is the value this Draggable stores.
//           data: NumberBox(
//             number: 4,
//           ),
//           child: NumberBox(
//             number: 4,
//           ),

//           feedback: NumberBox(
//             number: 4,
//           ),
//           childWhenDragging: Container(
//             height: 40.0,
//             width: 40.0,
//             color: Colors.pinkAccent,
//             child: const Center(
//               child: Text('si'),
//             ),
//           ),
//         ),
//         DragTarget<Widget>(
//           builder: (
//             BuildContext context,
//             List<dynamic> accepted,
//             List<dynamic> rejected,
//           ) {
//             return acceptedData;
//           },
//           onAccept: (Widget data) {
//             setState(() {
//               acceptedData = data;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
