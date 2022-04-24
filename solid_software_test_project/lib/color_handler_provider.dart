import 'package:flutter/material.dart';
import 'package:solid_software_test_project/color_handler.dart';

class ColorHandlerProvider extends ChangeNotifier {
  ColorHandlerProvider();

  ColorHandlerProvider.withColors(this.backgroundColor, this.textColor) {
    notifyListeners();
  }
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;

  void changeColor() {
    backgroundColor = ColorHandler.generateColor();
    textColor = ColorHandler.mixComponents(backgroundColor);
    notifyListeners();
  }
}
