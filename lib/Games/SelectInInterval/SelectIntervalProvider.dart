import 'package:flutter/material.dart';

import 'dart:math';

class SelecIntervalProvider extends ChangeNotifier {
  List<int> options = new List<int>.filled(8, 0);
  List<int> limits = new List<int>.filled(2, 0);
  bool _finalizate = false;
  int _level = 0;
  final _random = new Random();
  SelecIntervalProvider._privateConstructor() {
    initializeOptionsAndLimits();
  }

  static final SelecIntervalProvider _instance =
      SelecIntervalProvider._privateConstructor();

  static SelecIntervalProvider get instance {
    return _instance;
  }

  int get level => _level;
  bool get finalizate => _finalizate;

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
    bool _isThereValueLessThanFirstLimit = false;
    bool _isThereValueBetweenLimits = false;
    for (int i = 0; i < options.length; i++) {
      if (options[i] < limits[0]) {
        _isThereValueLessThanFirstLimit = true;
      }
      if (options[i] >= limits[0] && options[i] <= limits[1]) {
        _isThereValueBetweenLimits = true;
      }
    }
    int _firstPosition = _random.nextInt(options.length);
    if (!_isThereValueLessThanFirstLimit)
      options[_firstPosition] = _random.nextInt(limits[0] - 1);
    if (!_isThereValueBetweenLimits) {
      int _secondPosition = -1;
      while (_secondPosition == _firstPosition) {
        _secondPosition = _random.nextInt(options.length);
      }
      options[_secondPosition] = limits[0] + _random.nextInt(limits[1] - 1);
    }
  }

  bool isItCorrect(int index) {
    if (level == 0) {
      if (options[index] < limits[0]) {
        return true;
      }
      return false;
    }
    if (options[index] > limits[level - 1] && options[index] < limits[level]) {
      return true;
    }
    return false;
  }

  bool nextLevel(int level) {
    if (_level == 0) {
      for (int i = 0; i < options.length; i++) {
        if (options[i] != -1 && options[i] < limits[0]) {
          return false;
        }
      }
      _level = 1;
      notifyListeners();
      print("NEXT LEVELLLLL");
      return true;
    }

    for (int i = 0; i < options.length; i++) {
      if (options[i] > limits[_level - 1] && options[i] < limits[_level]) {
        return false;
      }
    }
    _level = _level + 1;

    if (_level == limits.length) {
      print("finalizo");
      _finalizate = true;
      _level = _level - 1;
    }
    print("NEXT LEVELLLLL");
    notifyListeners();

    return true;
  }
}
