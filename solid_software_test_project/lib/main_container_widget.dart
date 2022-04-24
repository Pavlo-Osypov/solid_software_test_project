import 'package:flutter/material.dart';
import 'package:solid_software_test_project/color_handler_provider.dart';
import 'package:provider/provider.dart';

class MainContainer extends StatelessWidget {
  MainContainer({Key? key}) : super(key: key);

  // We could not set it here, but pass it as parameter to constructor
  // and make this widget more configurable
  final ColorHandlerProvider _colorProvider = ColorHandlerProvider.withColors(
    Colors.blue,
    Colors.yellow,
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ColorHandlerProvider>.value(
      value: _colorProvider,
      child: GestureDetector(
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
                        fontSize: 27,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        onTap: _colorProvider.changeColor,
      ),
    );
  }
}
