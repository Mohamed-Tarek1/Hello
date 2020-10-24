import 'package:flutter/material.dart';
import 'package:hello/all_furniture.dart';
import 'product_grid.dart';

class DiningRoom extends StatelessWidget {
   FurnitureData product = FurnitureData();
  @override

  Widget build(BuildContext context) {

      return Scaffold (backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            title: Text('Dining Room',textAlign: TextAlign.left,style: TextStyle(
              fontSize: 26.0,
              fontFamily: 'Merriweather'
            ),),
           backgroundColor: Colors.greenAccent,
          ),
          body: Products_Grid()) ;


  }

}



