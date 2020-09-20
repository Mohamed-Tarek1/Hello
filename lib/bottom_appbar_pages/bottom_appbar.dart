import 'package:flutter/material.dart';
import 'package:hello/navigator_drawer.dart';

import 'my_cart.dart';

class BottomAppBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(

      shape: const CircularNotchedRectangle(),
      child: Container(height: 50.0,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20.0,),
              child: IconButton(icon: Icon(Icons.supervisor_account),
                onPressed: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,),
              child: IconButton(icon: Icon(Icons.add_shopping_cart),
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MyCart();
                  }));

                },),
            ),
            Padding(
              padding: const EdgeInsets.only(left:120.0,),
              child: IconButton(icon: Icon(Icons.settings),
                onPressed: (){},),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: IconButton(icon:Icon( Icons.filter_list),
                color: Colors.black,
                onPressed: (){},
              ),
            )
          ],
        ),),
    );
  }
}