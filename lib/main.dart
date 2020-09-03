import 'package:flutter/material.dart';
import 'package:hello/signing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Bangers'),
      home: SigningPage(),
    );
  }
}
