import 'package:flutter/material.dart';

import 'package:therapeutic_games/Games/SelectInInterval/Widgets/CustomTarget.dart';

class DropContainer extends StatefulWidget {
  @override
  _DropContainerState createState() => _DropContainerState();
}

class _DropContainerState extends State<DropContainer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * .3;
    return Expanded(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                // Red border with the width is equal to 5
                border: Border.all(
                    width: 5, color: Color.fromRGBO(114, 211, 227, 1))),
            child: Column(children: [
              Text('Menores a 35',
              style: TextStyle(
                color: Color.fromRGBO(114, 211, 227, 1),
                fontSize: 35.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                  
                    
                    CustomTarget(),
                    CustomTarget(),
                    CustomTarget(),
                    CustomTarget(),
                  ],
                ),
                Column(
                  children: [
                    CustomTarget(),
                    CustomTarget(),
                    CustomTarget(),
                    CustomTarget(),
                  ],
                )
              ],),
              ]) 
            
            )
            );
  }
}
