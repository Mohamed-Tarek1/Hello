import 'package:flutter/material.dart';
import 'package:hello/providers/product.dart';
import 'file:///G:/Flutter/projects/hello/home/home_page.dart';
import 'providers/produts_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderProducts(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: 'Bangers'),
        home: MainPage(),
      ),
    );
  }
}
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderProducts(),
        ),
        ChangeNotifierProvider(
          create: (context) => Furniture(),
        )
      ],
      child: HomePage(),
    );
  }
}


