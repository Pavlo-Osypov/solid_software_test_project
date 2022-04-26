import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solid_software_test_project/constants.dart';

/// Implementation of ColorHandlerInterface
/// Generating, mixing colors for main container screen and returns them
class ColorHandler implements ColorHandlerInterface {
  /// Described in abstract parent class
  static Color generateColor() {
    return Color.fromARGB(
      Random().nextInt(maxIntForRGB),
      Random().nextInt(maxIntForRGB),
      Random().nextInt(maxIntForRGB),
      Random().nextInt(maxIntForRGB),
    );
  }

  /// Described in abstract parent class
  static Color mixComponents(Color fromColor) {
    return Color.fromARGB(
      maxIntForRGB,
      fromColor.blue,
      fromColor.red,
      fromColor.green,
    );
  }
}

/// Interface for ColorHandler
abstract class ColorHandlerInterface {
  /// Generates and returns random color
  static Color generateColor() => Colors.transparent;

  /// Returns color which is mixed from another but always with ALPHA = 255
  /// Just for better visibility on main screen
  static Color mixComponents(Color fromColor) => Colors.transparent;
}
