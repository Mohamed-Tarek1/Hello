import 'package:flutter/material.dart';
import 'package:hello/providers/product.dart';
import 'package:flutter/foundation.dart';
class ProviderProducts extends ChangeNotifier{
List <Furniture> _items= [  Furniture(id: 'p1',imageURL:'https://image.freepik.com/free-photo/view-working-interior-with-white-wall-empty-room_41470-347.jpg', name: 'Lap Table with a chair',price: 60),
  Furniture(id: 'p2',imageURL:'https://freepngimg.com/thumb/aquarium/45759-2-red-sofa-png-file-hd.png',name:  'Couch',price: 60,isFavorite: false ),
  Furniture(id: 'p3',imageURL:'https://image.freepik.com/free-photo/interior-with-armchair-lamp-green-plants-dark-wall-background_41470-18.jpg',name: 'Ordinary Single chair',price: 40,isFavorite: false ),
  Furniture(id: 'p4',imageURL:'https://pngimg.com/uploads/bassinet/bassinet_PNG20.png',name: 'Babies bed',price: 50,isFavorite: false )];


List<Furniture> get items{
  return[..._items];
}
List<Furniture> get favoriteItems{
  return _items.where((element) => element.isFavorite).toList();
}
void addProduct(){
  notifyListeners();
}
    
}