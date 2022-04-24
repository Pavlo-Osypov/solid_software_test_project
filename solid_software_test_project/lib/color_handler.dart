import 'dart:math';

import 'package:flutter/material.dart';

abstract class ColorHandlerInterface {
  static Color generateColor() => Colors.transparent;
  static Color mixComponents(Color fromColor) => Colors.transparent;
}

class ColorHandler implements ColorHandlerInterface {
  static Color generateColor() {
    return Color.fromARGB(
      Random().nextInt(255),
      Random().nextInt(255),
      Random().nextInt(255),
      Random().nextInt(255),
    );
  }

  static Color mixComponents(Color fromColor) {
    return Color.fromARGB(
      255,
      fromColor.blue,
      fromColor.red,
      fromColor.green,
    );
  }
}
