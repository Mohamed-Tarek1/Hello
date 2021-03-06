import 'package:flutter/material.dart';
import 'file:///G:/Flutter/projects/hello/home/home_page.dart';
import 'my_profile.dart';
import 'signing_page.dart';
import 'nav_menu.dart';
class NavigatorDrawer extends StatefulWidget {
  static bool isLoggedIn=false;

  @override
  _NavigatorDrawerState createState() => _NavigatorDrawerState();
}

class _NavigatorDrawerState extends State<NavigatorDrawer> {
  List <NavMenu> navigationmenu =[

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(NavigatorDrawer.isLoggedIn ==true){
      navigationmenu.add(NavMenu(title: 'Logout',destination: ()=> HomePage()));
      navigationmenu.add( NavMenu(title: 'My Profile',destination: ()=> MyProfile()));
    }else{
      navigationmenu.add(NavMenu(title: 'Login',destination: ()=> SigningPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView.builder(itemBuilder: (context,position){
        return Padding(
          padding: const EdgeInsets.only(left :20.0,top: 24.0),
          child: ListTile(
            title: Text(navigationmenu[position].title,
              style: TextStyle(color: Colors.grey.shade700,fontSize: 22,fontStyle: FontStyle.italic),),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.grey.shade400,
            ),

            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return navigationmenu[position].destination();
              }));
            },
          ),
        );

      },
        itemCount : navigationmenu.length,
      ),
    );
  }
}
