

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:therapeutic_games/Games/SelectInInterval/SelectInInterval.dart';
import 'Games/SelectInInterval/SelectIntervalProvider.dart';
// import 'package:therapeutic_games/Games/SelectInInterval/Widgets/NumberBox.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  static const String _title = 'Games Repository';
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SelecIntervalProvider.instance),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: Scaffold(
          appBar: AppBar(title: Text("Games")),
          body: SelectInInterval(),
        ),
      ),
    );
  }
}
