import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../lib/all_furniture.dart';
class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  _CarouselWithIndicatorDemoState createState() => _CarouselWithIndicatorDemoState();
}

class _CarouselWithIndicatorDemoState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;

      FurnitureData FD= FurnitureData();

  @override
  Widget build(BuildContext context) => Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(height: 300.0,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _current=index;
                });

              }
          ),
          items: FD.data.map((i) {
            int index = FD.data.indexOf(i);
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(FD.data[_current].imageURL,),fit: BoxFit.fill
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(FD.data[_current].name, style: TextStyle(fontSize: 20.0,color: Colors.grey.shade700),
                                maxLines: 2,textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,overflow: TextOverflow.clip),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0,bottom: 10.0),
                            child: Text("${FD.data[_current].price} \$", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.grey.shade700),
                                maxLines: 2,textDirection: TextDirection.ltr),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0,bottom: 10.0),
                            child: Container(width: 80,height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.greenAccent
                              ),
                              child: FlatButton(onPressed: (){},
                                child: Text('Buy Now',style: TextStyle(fontSize: 15,
                                color: Colors.white
                                //    fontFamily: 'Merriweather'
                                ),),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                );
              },
            );
          }).toList(),

        ),
      ]
  );
}