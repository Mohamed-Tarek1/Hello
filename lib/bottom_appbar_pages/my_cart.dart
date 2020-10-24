import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(child: Text('My Cart' , style: TextStyle(color: Colors.white,fontSize: 30,fontFamily:'Merriweather'))),
      ),
      body: Container(
        child: Container(
          color: Colors.grey.shade400,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white
                  ),
                  child: Flexible(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),
                      child: ListView.builder(
                        itemBuilder: (context,index){
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                                child: Row(children: [
                                  IconButton(icon: Icon(Icons.highlight_off,color: Colors.red,size: 25.0,),onPressed: (){},),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    child: Image (image: NetworkImage('https://freepngimg.com/thumb/aquarium/45759-2-red-sofa-png-file-hd.png'),fit: BoxFit.fitWidth),
                                  )                     ,
                                  Padding(
                                    padding: const EdgeInsets.only(left :15.0,right: 15.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Modern Gray Tops',style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily:'Merriweather'),),
                                        SizedBox(height: 5.0,),
                                        Text('\$ 7 x 1',style: TextStyle(color: Colors.grey.shade500,fontSize: 15,fontWeight: FontWeight.bold,),)
                                      ],),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 45,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),
                                        border: Border.all(color: Colors.grey.shade300,style: BorderStyle.solid,width: 2.0)
                                    ),
                                    child: Center(child: Text('1',style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold))),
                                  )
                                ],),
                              ),
                              Container(child:Text( "--------------------------------------------",
                                style: TextStyle(color: Colors.grey.shade400,letterSpacing: 2),))
                            ],
                          );},itemCount: 4,
                      ),
                    ),
                  ),
                ),
                Flexible(child:Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:25.0,top:30.0),
                      child: Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Have a coupon?',style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold ,fontFamily:'Merriweather'),),
                            SizedBox(height: 10,),
                            Text('Enter your coupon code here & get awesome discounts',maxLines: 2,overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500,fontWeight:FontWeight.bold,fontSize: 15,fontFamily:'Merriweather'),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                  height:50,
                                  width: 255,
                                  child: TextField(
                                      onChanged: (value) {
                                        //Do something with the user input.
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Enter your Voucher',hintStyle: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.bold),
                                        contentPadding:
                                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0),),
                                        ),
                                      )),
                                ),
                                Transform.translate(
                                  offset: Offset(-15,-1.5),
                                  child: Container(
                                    width: 72,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: Colors.indigo.shade700),
                                    child: FlatButton(
                                      child: Text('Apply',style: TextStyle(color: Colors.white,fontSize: 20),),
                                      onPressed: (){

                                      },
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:25.0),
                          child: Text('\$ 38.48',style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:23.0),
                          child: Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.orange
                            ),
                            child: FlatButton(
                              child: Text('Checkout',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,fontFamily:'Merriweather'),),
                              onPressed: (){

                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
