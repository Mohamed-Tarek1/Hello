import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'all_furniture.dart';
class FlashSale extends StatefulWidget {
  @override
  _FlashSaleState createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  int _current = 0;

  FurnitureData FD= FurnitureData();

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
          autoPlayAnimationDuration: Duration(milliseconds: 500),
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
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                          Image (image: NetworkImage(FD.data[_current].imageURL,),fit: BoxFit.contain
                          ),
                       Padding(
                        padding: const EdgeInsets.all(10.0),
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

                          ],
                        ),
                      )],
                  ),
                );
              },
            );
          }).toList(),

        ),
      ]
  );
}