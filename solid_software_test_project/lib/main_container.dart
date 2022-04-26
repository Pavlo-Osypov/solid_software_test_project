import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_software_test_project/color_handler_provider.dart';
import 'package:solid_software_test_project/constants.dart';

///
class MainContainer extends StatelessWidget {
  // We could not set it here, but pass it as parameter to constructor
  // and make this widget more configurable
  final ColorHandlerProvider _colorProvider = ColorHandlerProvider.withColors(
    Colors.blue,
    Colors.yellow,
  );

  /// Consrtuctor
  MainContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ColorHandlerProvider>.value(
      value: _colorProvider,
      child: GestureDetector(
        onTap: _colorProvider.changeColor,
        child: Consumer<ColorHandlerProvider>(
          builder: (
            BuildContext context,
            ColorHandlerProvider value,
            Widget? child,
          ) {
            return Container(
              color: value.backgroundColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Hey there',
                      style: TextStyle(
                        color: value.textColor,
                        fontSize: helloThereFontSize,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
