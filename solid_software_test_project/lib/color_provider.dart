import 'dart:async';

import 'package:flutter/material.dart';
import 'package:solid_software_test_project/color_handler.dart';

/// State handler
class ColorProvider {
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;

  /// Streams color changing
  StreamController<List<Color>> colorStream = StreamController<List<Color>>();

  /// Generate colors for needed widgets and update them by notifying
  void generateColors() {
    _backgroundColor = ColorHandler.generateColor();
    _textColor = ColorHandler.mixComponents(_backgroundColor);
    colorStream.sink.add([_backgroundColor, _textColor]);
  }

  /// Do not forget to close stream!
  void closeStream() {
    colorStream.close();
  }
}
