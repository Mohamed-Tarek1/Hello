import 'package:flutter/material.dart';
import 'package:hello/providers/produts_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {

  final String title;
  ProductDetailsScreen({this.title});
  @override
  Widget build(BuildContext context) {
    final loadedProduct =Provider.of<ProviderProducts>(context,
        listen: false,
    ).items.firstWhere((element) => element.name==title);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.name,textAlign: TextAlign.left,style: TextStyle(
            fontSize: 23.0,
            fontFamily: 'Merriweather'
        ),),
        backgroundColor: Colors.greenAccent,),

    );
  }
}
