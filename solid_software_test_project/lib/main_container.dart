import 'package:flutter/material.dart';
import 'package:solid_software_test_project/color_provider.dart';
import 'package:solid_software_test_project/constants.dart';

///
class MainContainer extends StatefulWidget {
  /// Consrtuctor
  const MainContainer({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainContainerState();
}

class _MainContainerState extends State {
  final ColorProvider colorProvider = ColorProvider();

  void _setBackgroundColor() {
    colorProvider.generateColors();
  }

  @override
  void dispose() {
    colorProvider.closeStream();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: colorProvider.colorStream.stream,
      builder: (context, AsyncSnapshot<List<Color>> snapshot) {
        return GestureDetector(
          onTap: _setBackgroundColor,
          child: Container(
            color: snapshot.data?.first,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hey there',
                    style: TextStyle(
                      color: snapshot.data?.last,
                      fontSize: helloThereFontSize,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
