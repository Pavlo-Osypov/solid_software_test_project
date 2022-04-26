import 'package:flutter/material.dart';
import 'package:solid_software_test_project/color_handler.dart';

/// State handler
class ColorHandlerProvider extends ChangeNotifier {
  /// Default background color
  Color backgroundColor = Colors.white;

  /// Default title text color
  Color textColor = Colors.black;

  /// Named constructor with params, notifies listeners on start
  ColorHandlerProvider.withColors(this.backgroundColor, this.textColor) {
    notifyListeners();
  }

  /// Generate colors for needed widgets and update them by notifying
  void changeColor() {
    backgroundColor = ColorHandler.generateColor();
    textColor = ColorHandler.mixComponents(backgroundColor);
    notifyListeners();
  }
}
