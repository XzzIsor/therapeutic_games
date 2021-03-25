import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:therapeutic_games/Games/SelectInInterval/SelectIntervalProvider.dart';

import 'package:therapeutic_games/Games/SelectInInterval/Widgets/CustomTarget.dart';

class DropContainer extends StatefulWidget {
  @override
  _DropContainerState createState() => _DropContainerState();
}

class _DropContainerState extends State<DropContainer> {
  @override
  Widget build(BuildContext context) {
    SelecIntervalProvider provider =
        Provider.of<SelecIntervalProvider>(context, listen: true);
    provider = SelecIntervalProvider.instance;
    print("LEVEL " + provider.level.toString());
    String texto = "";
    if (provider.finalizate) {
      texto = "GG EZ PLAY, parecen bots";
    } else {
      texto = provider.level == 0
          ? 'Menores a ${provider.limits[0]}'
          : 'debe estar entre ${provider.limits[provider.level - 1]} y ${provider.limits[provider.level]}';
    }
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
              Text(
                texto,
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
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
            ])));
  }
}
