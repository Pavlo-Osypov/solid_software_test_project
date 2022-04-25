import 'package:flutter/material.dart';
import 'package:solid_software_test_project/color_handler.dart';
import 'package:solid_software_test_project/constants.dart';

//ignore: public_member_api_docs
class MyApp extends StatelessWidget {
  // ignore: public_member_api_docs
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Solid Software Test Project'),
    );
  }
}

// ignore: public_member_api_docs
class MyHomePage extends StatefulWidget {
  /// Title on AppBar
  final String title;

  // ignore: public_member_api_docs
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.white;

  @override
  void initState() {
    super.initState();
    _backgroundColor = ColorHandler.generateColor();
  }

  void _setBackgroundColor() {
    setState(() {
      _backgroundColor = ColorHandler.generateColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: _setBackgroundColor,
        child: Container(
          color: _backgroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hey there',
                  style: TextStyle(
                    color: ColorHandler.mixComponents(_backgroundColor),
                    fontSize: helloThereFontSize,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
