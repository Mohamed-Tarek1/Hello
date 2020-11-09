import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hello/providers/produts_provider.dart';
import 'product_view.dart';

class DiningRoom extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    final productsData =Provider.of<ProviderProducts>(context);
    final products=productsData.items;

    return Scaffold (backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            title: Text('Dining Room',textAlign: TextAlign.left,style: TextStyle(
              fontSize: 26.0,
              fontFamily: 'Merriweather'
            ),),
           backgroundColor: Colors.greenAccent,
          ),
          body: GridView.builder(
            padding: EdgeInsets.all(13.0),
            itemCount: products.length,
            itemBuilder: (ctx,i)=>  ChangeNotifierProvider.value(
              value: products[i],
              child:Product(
                //title: products[i].name,
                // id: products[i].id,
                // imgURL: products[i].imageURL,
                // price: products[i].price,
                //  isFavorite: products[i].isFavorite,
              ),),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                childAspectRatio: 3/2,
                mainAxisSpacing: 15.0),
          )) ;


  }

}



