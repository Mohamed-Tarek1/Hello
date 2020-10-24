import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'navigator_drawer.dart';
import 'file:///G:/Flutter/projects/hello/home/home_page.dart';
class SigningPage extends StatefulWidget {

  @override
  _SigningPageState createState() => _SigningPageState();
}

class _SigningPageState extends State<SigningPage> with SingleTickerProviderStateMixin {

  Animation animation1,animation2,animation3;
  AnimationController animationController;
  final _auth = FirebaseAuth.instance;
  String email,password;
  @override
  void initState() {
    super.initState();
  animationController= AnimationController(duration: Duration(seconds: 4),vsync: this);
  animation1 =Tween(begin: -1.0,end: 0.0).animate(CurvedAnimation(
    curve: Curves.fastOutSlowIn,
    parent: animationController
  ));
  animation2 =Tween(begin: -1.0,end: 0.0).animate(CurvedAnimation(
      curve: Interval(0.5,1.0,curve: Curves.fastOutSlowIn),
      parent: animationController
  ));

  animation3 =Tween(begin: -1.0,end: 0.0).animate(CurvedAnimation(
      curve: Interval(0.8,1.0,curve: Curves.fastOutSlowIn),
      parent: animationController
  ));
  }

  @override
  Widget build(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    animationController.forward();

    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Transform(
              transform: Matrix4.translationValues(animation1.value*width, 0.0, 0.0),
              child: Container(
                child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                        child: Text(
                          'Hello',
                          style: TextStyle(fontSize: 70),
                        ),
                      ),
                      Container(
                        padding:  EdgeInsets.fromLTRB(16.0, 175.0, 0.0, 0.0),
                        child: Text(
                          'There,',
                          style: TextStyle(fontSize: 70),
                        ),
                      ),
                     ],),
              ),
            ),
          ),
          Transform(
            transform: Matrix4.translationValues(animation2.value*width, 0.0, 0.0),
            child: Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Container(
                    child: TextField(
                    onChanged: (value){
                      email=value;
                    },
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: 'EMAIL',labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: TextField(
                      onChanged: (value){
                        password = value;
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',labelStyle: TextStyle(fontSize: 20,color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green),
                          ),
                      ),
                obscureText: true,
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Container(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: Text('Forget Password..',style: TextStyle(color: Colors.greenAccent,fontSize: 15,decoration: TextDecoration.underline ),),
                   onTap: (){

                   },
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
                      child: Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 30),),
                      onPressed: ()async{
                        try {
                          final _newUser = _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                          if(_newUser !=null){
                            NavigatorDrawer.isLoggedIn=true;
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return HomePage();
                            }));

                          }
                        }catch(e){
                          print(e);
                        }
                      },
                    ),
                  ),SizedBox(height: 10.0,),
                  Container(
                    height: 40.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,style: BorderStyle.solid,width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Image(image:AssetImage('assets/images/facebook.png'),),
                        SizedBox(width: 10,),
                        Text('Login With Facebook',style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Transform(
            transform: Matrix4.translationValues(animation3.value*width, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New to Hello? ',),
                InkWell(
                  child: Text('Register..',style: TextStyle(color: Colors.greenAccent,decoration: TextDecoration.underline),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SignUp();
                    }));
                  },
                )
              ],
            ),
          )
        ],
      ),);}
      );
  }
}
