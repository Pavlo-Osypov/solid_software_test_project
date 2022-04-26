import 'package:flutter/material.dart';
import 'package:solid_software_test_project/main_container.dart';

/// Entry point for app
class MyApp extends StatelessWidget {
  /// Constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Solid Software Test Project'),
    );
  }
}

/// Main page
class MyHomePage extends StatelessWidget {
  /// Title on AppBar
  final String title;

  /// Constructor
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const MainContainer(),
    );
  }
}
