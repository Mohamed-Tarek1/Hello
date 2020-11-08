import 'package:flutter/material.dart';
import 'package:hello/providers/product.dart';
import 'package:provider/provider.dart';
import 'product_details.dart';
class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final loadedProduct = Provider.of<Furniture>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
        child: GridTile(
    child:  GestureDetector(
    onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>ProductDetailsScreen(title: loadedProduct.name,)));
              },
              child:Image(
        image: NetworkImage(loadedProduct.imageURL),
        fit: BoxFit.fill,
          )),
          footer: GridTileBar(
        backgroundColor: Colors.greenAccent.withOpacity(.8),
        title: Text(loadedProduct.name,textAlign: TextAlign.center,  style: TextStyle(fontSize: 20),),
        leading: IconButton(
          icon: Icon(
          loadedProduct.isFavorite? Icons.favorite: Icons.favorite_border,
            size: 20,
            //color: isFavorite ==true? Colors.red : Colors.white,
          ),
          onPressed: (){
            loadedProduct.toggleFavoriteStatus();
          },
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.shopping_cart,
            size: 20,
            color: Colors.white,
          ),
          onPressed: (){
          },
        ),
          ),
        ),
      );
  }
}
