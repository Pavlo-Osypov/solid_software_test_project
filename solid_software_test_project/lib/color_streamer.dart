import 'dart:async';

import 'package:flutter/material.dart';
import 'package:solid_software_test_project/color_handler.dart';

class ColorProvider {
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;

  StreamController<List<Color>> colorStream = StreamController<List<Color>>();

  void generateColors() {
    _backgroundColor = ColorHandler.generateColor();
    _textColor = ColorHandler.mixComponents(_backgroundColor);
    colorStream.sink.add([_backgroundColor, _textColor]);
  }

  void closeStream() {
    colorStream.close();
  }
}
