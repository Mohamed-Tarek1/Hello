import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'my_profile.dart';
class EditProfilePage extends StatelessWidget {
  static String editedUsername = 'none',editedFullName= 'none',editedPhone='none',editedEmailAddress='none',editedShippingAddress='none';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
              ),
              child:Padding(
                  padding: EdgeInsets.only(top: 40.0,left: 15.0,right: 15.0),
                  child: Column(
                children: [
                  _editFiled(Icons.person_pin, 'Username', editedUsername),
                  _editFiled(Icons.person_pin, 'Fullname', editedUsername),
                  _editFiled(Icons.phone, 'Phone', editedUsername),
                  _editFiled(Icons.email, 'Email Address', editedUsername),
                  _editFiled(Icons.stars, 'Shipping Address', editedUsername),

                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 10.0,top: 10.0),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FlatButton(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit
                          ,size: 20.0,
                          color: Colors.white,
                        ),
                        Text('Save All Changes',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontFamily: 'Merriweather'
                        ),),
                      ],
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return MyProfile();
                        }
                    ));
                  },
                ),
              ),
            ) ,
          ],
        ),
      ),
    );
  }

Widget _editFiled( IconData icon , String name, String edited){
return Padding(
  padding: const EdgeInsets.only(top:14.0,bottom: 20.0),
  child:   Column(
    children: [
      Row(
        children: [
          Icon(
            icon,color:  Colors.greenAccent,
            size: 25,)
  ,
    SizedBox(width: 10.0,),
              Text(name,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 20,decoration: TextDecoration.none),
              )
        ],
      ),
      SizedBox(height: 10.0,),
      Container(
        height:50,
        width: double.infinity,
        child: TextField(
            onChanged: (value) {
              //Do something with the user input.
            },
            decoration: InputDecoration(
              hintText: edited,hintStyle: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.bold),
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),),
              ),
            )),

    ],
  ),
);

}



}
