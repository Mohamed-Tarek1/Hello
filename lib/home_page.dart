import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hello/flash_sale_slider.dart';
import 'package:hello/navigator_drawer.dart';
import 'all_furniture.dart';
import 'home_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FurnitureData FD = FurnitureData();
    Color _color=Colors.white;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Home Page',style: TextStyle(fontSize: 30,color: _color,fontStyle: FontStyle.italic,),textAlign: TextAlign.start,),
        backgroundColor: Colors.greenAccent,
      ),
      drawer:NavigatorDrawer() ,
      bottomNavigationBar: BottomAppBar(

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
                onPressed: (){},),
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () => setState(() {
        }),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.home,color: Colors.grey.shade700,),
          Text("Home",style: TextStyle(color: Colors.grey.shade700,fontSize: 17),),
        ],),
      ),
      body: SingleChildScrollView(
        child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
      Padding(
        padding: const EdgeInsets.only( bottom :10.0),
        child: CarouselWithIndicatorDemo(),
      ),
          Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _drawHeader('Product Category'),
              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 5.0,bottom: 5.0),
                child: Row(
                  children: [
                    _drawCategory(Icon(Icons.local_pizza,color: Colors.greenAccent,size: 40,), 'Dining Room',(){}),
                    _drawCategory(Icon(Icons.hotel,color: Colors.greenAccent,size: 40,), 'Bed Room',(){}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 5.0,bottom: 5.0),
                child: Row(
                  children: [
                    _drawCategory(Icon(Icons.child_friendly,color: Colors.greenAccent,size: 40,), 'Babies',(){}),
                    _drawCategory(Icon(Icons.restaurant,color: Colors.greenAccent,size: 40,), 'Kitchen',(){}),
                  ],
                ),
              ),

            ],
          ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,right:20.0,bottom: 10.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween
                      ,
                        children: [
                          _drawHeader('Flash Sale'),
                          Container(width: 90,height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent
                            ),
                            child: FlatButton(onPressed: (){},
                              child: Text('View All',style: TextStyle(fontSize: 18,
                                  color: Colors.white
                                //    fontFamily: 'Merriweather'
                              ),),
                            ),
                          )
                        ],
                      ),

                    ),
            FlashSale(),


                  ],
                )
              ],
            ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
Widget _drawHeader(String title){
    return  Text(title,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.grey.shade700,
        fontFamily: 'Merriweather',
        fontWeight: FontWeight.bold
      ),
    );
}
Widget _drawCategory(Icon icon , String type,Function onpress){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        child: Container(
          width: 165,
height: 125,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.white,
),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(type ,style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 24,
                fontFamily: 'Merriweather'
                  ,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              )
            ],
          ),
        ),
        onTap: onpress(),
      ),
    );
}
}