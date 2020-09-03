import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Container(
              padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
              child: Text(
                'Signup .',
                style: TextStyle(fontSize: 70),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(

                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'NICK NAME',labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green),
                      ),
                    ),

                  ),
                ),
                SizedBox(height: 30.0,),
                Container(
                  height: 40.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: FlatButton(
                    child: Text('SIGNUP',style: TextStyle(color: Colors.white,fontSize: 30),),
                    onPressed: (){},
                  ),
                ),SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,style: BorderStyle.solid,width: 1.0),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: FlatButton(
                    child: Text("GO BACK",style: TextStyle(fontSize: 30),),
                  )
                )
              ],
            ),
          ),
        ],
      ),);
  }
}
