import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Furniture with ChangeNotifier{
  final String id;
   final String imageURL,name;
   final double price;
   bool isFavorite;
  Furniture({
  @required this.id ,
  @required this.imageURL,
  @required this.name,
  @required this.price,
  this.isFavorite= false} );


  void toggleFavoriteStatus(){
    isFavorite=!isFavorite;
    notifyListeners();
  }

}