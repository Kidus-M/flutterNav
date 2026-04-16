import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'grateful.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        '/about': (context) => const About(),
        '/grateful': (context) => const Grateful(radioGroupValue: 0),
      },
    );
  }
}
