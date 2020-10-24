import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../lib/all_sales.dart';
class FlashSale extends StatefulWidget {
  @override
  _FlashSaleState createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  int _current = 0;

  SalesData SD= SalesData();

  @override
  Widget build(BuildContext context) => Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
              height: 400.0,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              autoPlay: true,
          enableInfiniteScroll: true,
          disableCenter: false,
          autoPlayAnimationDuration: Duration(milliseconds: 400),
              onPageChanged: (index, reason) {
                setState(() {
                  _current=index;
                });

              }
          ),
          items: SD.salesData.map((i) {
            int index = SD.salesData.indexOf(i);
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5,5,5,10),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                Flexible(
                                  child: Image (image: NetworkImage(SD.salesData[_current].imageURL,),fit: BoxFit.fitWidth
                                  ),
                                ),
                             Padding(
                              padding: const EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(SD.salesData[_current].name, style: TextStyle(fontSize: 20.0,color: Colors.grey.shade700),
                                        maxLines: 2,textAlign: TextAlign.left,
                                        textDirection: TextDirection.ltr,overflow: TextOverflow.clip),
                                  ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("%${SD.salesData[_current].sale*100} ", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.white,)),
                            Text("Sale", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.white,)),
                          ],
                        ),
                        ),
                      ),


                                  Padding(
                                    padding: const EdgeInsets.only(left:10.0,bottom: 10.0),
                                    child: Row(
                                      children: [
                                        Text("\$${SD.salesData[_current].newprice} ", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.blue,)),
                                        SizedBox(width: 10.0,),
                                        Text("\$${SD.salesData[_current].price} ", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.red,
                                            decoration: TextDecoration.lineThrough ,decorationColor: Colors.red,decorationThickness: 20,decorationStyle: TextDecorationStyle.double ),
                                            maxLines: 2,textDirection: TextDirection.ltr,),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            )],
                        ),
                      ),
                  ),
                );
              },
            );
          }).toList(),

        ),
      ]
  );
}