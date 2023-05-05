import 'package:flutter/material.dart';
import 'aboutus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Flutter App',
      home: AboutUs(),
    );
  }
}
