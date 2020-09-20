import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeeklyBestSellers extends StatefulWidget {
  @override
  _WeeklyBestSellersState createState() => _WeeklyBestSellersState();
}

class _WeeklyBestSellersState extends State<WeeklyBestSellers> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 550,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20.0),
        child: ListView.builder(itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Transform.translate(
                        offset: Offset(2,40),
                        child:   Container(
                          width: 150,
                          height: 75,
                         child: Image (image: NetworkImage('https://freepngimg.com/thumb/aquarium/45759-2-red-sofa-png-file-hd.png'),fit: BoxFit.fitWidth),

                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-30,-60),
                        child: Container(
                          height: 25.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.greenAccent
                          ),
                          child: Center(child: Text('Sale',style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,letterSpacing: 1),)),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(-40,0),
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            size: 30,
                            color: Colors.red,
                          ),
                        ),
                      )
                      ,
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('Modern Red Sofa',style: TextStyle(color: Colors.black,fontFamily: 'Merriweather',fontSize: 17),
                    ),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.monetization_on,color: Colors.blue.shade800,size: 25,
                        ),
                        SizedBox(width: 5.0,),
                            Text("\$70 ", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.blue,fontFamily: 'Merriweather')),
                            SizedBox(width: 10.0,),
                            Text("\$100 ", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.red,fontFamily: 'Merriweather',
                                decoration: TextDecoration.lineThrough ,decorationColor: Colors.red,decorationThickness: 0.8,
                                decorationStyle: TextDecorationStyle.double ),
                                maxLines: 2,textDirection: TextDirection.ltr),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.stars,color: Colors.yellow.shade700,size: 25,
                        ),
                        Text(" 4.82 ", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.blue,fontFamily: 'Merriweather')),

                        Text(" (125) ", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.red,fontFamily: 'Merriweather',
                             )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Container(
                        height: 30.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.greenAccent
                        ),
                        child: FlatButton(child: Row(
                          children: [
                            Icon(
                              Icons.shopping_cart,color: Colors.white,size: 25,
                            ),

                            Text('Buy Now',style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,letterSpacing: 1,
                                fontSize: 18,fontFamily: 'Merriweather'),),
                          ],
                        )),
                      ),
                    ),

                  ],
                  )
                ],
              ),
            ),
          );
        },
          itemCount: 3,),
      ),
    );
  }
}

