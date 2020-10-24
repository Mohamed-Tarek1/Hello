import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hello/providers/produts_provider.dart';
import 'package:hello/pages/product_view.dart';
import 'package:provider/provider.dart';
class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  _CarouselWithIndicatorDemoState createState() => _CarouselWithIndicatorDemoState();
}

class _CarouselWithIndicatorDemoState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final productsData =Provider.of<ProviderProducts>(context);
    final products=productsData.items;
    return Column(

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
          items: products.map((i) {
            int index = products.indexOf(i);
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(products[_current].imageURL,),fit: BoxFit.fill
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(products[_current].name, style: TextStyle(fontSize: 20.0,color: Colors.grey.shade700),
                                maxLines: 2,textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,overflow: TextOverflow.clip),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0,bottom: 10.0),
                            child: Text("${products[_current].price} \$", style: TextStyle(fontSize: 20.0,wordSpacing: 1,color: Colors.grey.shade700),
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
  );}
}