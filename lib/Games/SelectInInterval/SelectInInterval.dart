import 'package:flutter/material.dart';
import 'package:therapeutic_games/Games/SelectInInterval/Widgets/DragContainer.dart';

import 'Widgets/DropContainer.dart';

class SelectInInterval extends StatelessWidget {
  const SelectInInterval({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        DragContainer(),
        DropContainer(),
      ],
    );
  }
}
