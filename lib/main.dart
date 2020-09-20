import 'package:flutter/material.dart';
import 'file:///G:/Flutter/projects/hello/home/home_page.dart';

import 'package:hello/signing_page.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Bangers'),
      home: HomePage(),
    );
  }
}

