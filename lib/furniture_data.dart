import 'package:flutter/material.dart';

class Furniture{
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
}