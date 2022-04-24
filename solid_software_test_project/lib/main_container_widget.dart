import 'package:flutter/material.dart';
import 'package:solid_software_test_project/color_streamer.dart';

class MainContainer extends StatefulWidget {
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
            child: Container(
              color: snapshot.data?[0],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Hey there',
                      style: TextStyle(
                        color: snapshot.data?[1],
                        fontSize: 27,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onTap: _setBackgroundColor,
          );
        });
  }
}
