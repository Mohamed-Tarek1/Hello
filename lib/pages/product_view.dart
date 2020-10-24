import 'package:flutter/material.dart';
import 'product_details.dart';
class Product extends StatelessWidget {
  final String id,title,imgURL;
  bool isFavorite;
  double price;
  Product({this.id,this.title,this.imgURL,this.price,this.isFavorite});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: GridTile(
          child:  GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>ProductDetailsScreen(title: title,)));
              },
              child:Image(
        image: NetworkImage(imgURL),
        fit: BoxFit.fill,
          )),
          footer: GridTileBar(
        backgroundColor: Colors.greenAccent.withOpacity(.8),
        title: Text(title,textAlign: TextAlign.center,  style: TextStyle(fontSize: 20),),
        leading: IconButton(
          icon: Icon(
            Icons.favorite,
            size: 20,
            color: isFavorite ==true? Colors.red : Colors.white,
          ),
          onPressed: (){
            isFavorite =true;
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
