import 'package:flutter/material.dart';

import 'dart:math';

class SelecIntervalProvider extends ChangeNotifier {
  List<int> options = new List<int>.filled(8, 0);
  List<int> limits = new List<int>.filled(2, 0);
  final _random = new Random();
  SelecIntervalProvider._privateConstructor() {
    initializeOptionsAndLimits();
  }

  static final SelecIntervalProvider _instance =
      SelecIntervalProvider._privateConstructor();

  static SelecIntervalProvider get instance {
    return _instance;
  }

  void initializeOptionsAndLimits() {
    for (int i = 0; i < options.length; i++) {
      options[i] = _random.nextInt(100);
    }
    for (int i = 0; i < limits.length; i++) {
      if (i == 0) {
        limits[0] = 1 + _random.nextInt(49);
      } else {
        limits[i] = 1 + limits[i - 1] + _random.nextInt(99 - limits[i - 1]);
      }
    }
    bool isThereValueLessThanFirstLimit = false;
    for (int i = 0; i < options.length; i++) {
      if (options[i] < limits[0]) {
        isThereValueLessThanFirstLimit = true;
      }
    }

    if (!isThereValueLessThanFirstLimit)
      options[_random.nextInt(options.length)] = _random.nextInt(limits[0] - 1);

  }
}
