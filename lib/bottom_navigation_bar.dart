import 'package:demo_project/route%20and%20navigation/routes.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';
class BottomNav extends StatefulWidget {

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int ourSelectedIndex=0;
  List<Widget> listBottomNavBar=[NavHome(),NavChat(),NavUser(),NavSearch()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Bottom Nav Bar"),
      backgroundColor: Colors.lightGreenAccent[700],
      centerTitle: true,),
      body:listBottomNavBar[ourSelectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ourSelectedIndex,
        onTap:(int i) {
          setState(() {
            ourSelectedIndex=i;
          });
        } ,
        backgroundColor: Colors.orange[500],
        type: BottomNavigationBarType.fixed, //only if the type is fixed,then background color is fixed
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: Colors.black,
        showUnselectedLabels: true, // to show label with icon
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home),
         //backgroundColor: Colors.red[200],
            label:"home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),
          //backgroundColor: Colors.black12,
            label:"user"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.textsms),
            //backgroundColor: Colors.black12,
            label:"chat"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
            //backgroundColor: Colors.black12,
            label:"search"
          ),


        ],
      ),
    );
  }
}
class NavHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Colors.yellow[500],
        body:
        Center(child: Column(
          children: [
            Text(" Home Bottom Nav Bar", style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),)
          ],
        ))
    );
  }
}
class NavChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
        body:
        Center(child: Column(
          children: [
            Text(" Chat Bottom Nav Bar", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),)
          ],
        ))
    );
  }
}
class NavUser extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[200],
        body:
        Center(child: Column(
          children: [
            Text("User Bottom Nav Bar", style: TextStyle(
              color: Colors.blue[700],
            ),)
          ],
        ))
    );
  }
}
class NavSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[700],
        body:
        Center(child: Column(
          children: [
            Text("Search Bottom Nav Bar", style: TextStyle(
              color: Colors.amber[800],
            ),)
          ],
        ))
    );
  }
}
