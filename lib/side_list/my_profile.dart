import 'package:flutter/material.dart';
import 'package:hello/side_list/edit_profile_page.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,

      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.90,

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0)
            ),
            child: Stack(
              children: [
                ClipPath(
                  child: Container(
                    color: Colors.green.shade700.withOpacity(0.8),
                  ),
                  clipper: getClipper(),
                ),

                Positioned(
                top: 150,
                  left: MediaQuery.of(context).size.width*0.20,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 70.0,
                         backgroundImage:  NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/119515669_2797493467137131_206354656930027383_o.jpg?_nc_cat=109&_nc_sid=09cbfe&_nc_ohc=7XiPSky-GioAX-x2cZS&_nc_ht=scontent-hbe1-1.xx&oh=cae5953adc3befccd6f2b3abb7c2d0ae&oe=5F8F6C36'),
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('@UserName',style: TextStyle(fontSize: 18.0 ,color:Colors.orange.withOpacity(0.6),fontFamily: 'Merriweather',decoration: TextDecoration.none ),
                          ),
                        SizedBox(height: 7.0,),
                          Text('Mohamed Tarek',style: TextStyle(fontSize: 18.0 ,color:Colors.black.withOpacity(0.6),fontFamily: 'Merriweather',decoration: TextDecoration.none ))
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 320,
                left: 10,
                child: _descriptionRow(Icons.person_pin,'@UserName'),
                ),
                Positioned(
                  top: 370,
                  left: 10,
                  child: _descriptionRow(Icons.person_pin,'Mohamed tarek'),
                ),Positioned(
                  top: 420,
                  left: 10,
                  child: _descriptionRow(Icons.phone,'01033450442'),
                ),Positioned(
                  top: 470,
                  left: 10,
                  child: _descriptionRow(Icons.email,'mohamedana17327@gmil.com'),
                ),Positioned(
                  top: 520,
                  left: 10,
                  child: _descriptionRow(Icons.location_on,'28/C Green Road, BD'),
                ),
                Positioned(
                  top: 570,
                  left: 10.0,
                  child: Row(
                    children: [
                      Icon(
                       Icons.stars
                      ,color: Colors.greenAccent,
                        size: 25,
                      ),
                  SizedBox(width: 20,),
                  Text('My Order',style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 20,decoration: TextDecoration.none))
                    ],
                  ),

                ),
                  Positioned(
                  top: 570,
          right: 10.0,
          child: Container(
            width: 70,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: FlatButton(
                child: Center(
                  child: Text('View',style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontFamily: 'Merriweather'
                  ),),
                ),
            ),
          )
                  ),

          ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 10.0,top: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
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
                      Text('Edit Profile',style: TextStyle(
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
                      return EditProfilePage();
                    }
                  ));
                },
              ),
            ),
          ) ,
        ],
      ),
    );
  }

  Widget _descriptionRow(IconData icon,String description) {
    return Table(
      textDirection: TextDirection.ltr,
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {0: FixedColumnWidth(30.0),
        1: FixedColumnWidth(15.0),
      2: FixedColumnWidth(300.0),
          },
      children: [
        TableRow(
          children: [
            Icon(
              icon,color: Colors.greenAccent,
              size: 25,
            ),
            SizedBox(),
            Text(description,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 20,decoration: TextDecoration.none),
               )

          ]
        )
      ],
    );
  }
}

class getClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height/2.5);
    path.lineTo(size.width+250, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }


}