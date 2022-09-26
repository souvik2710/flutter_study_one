import 'package:demo_project/route%20and%20navigation/routes.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';
class SideNavBar extends StatelessWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Side Nav Bar"),
          backgroundColor: Colors.lightGreenAccent[700],
          centerTitle: true,),
      drawer: OwnCreatedDrawer(),
      );

  }
}
class SideDrawerUser extends StatefulWidget {

  @override
  State<SideDrawerUser> createState() => _SideDrawerUserState();
}

class _SideDrawerUserState extends State<SideDrawerUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: Text("Side Nav Bar"),
        backgroundColor: Colors.lightGreenAccent[100],
        centerTitle: true,),
      backgroundColor:Colors.white,
      body:
      Center(child: Text("user Side Nav Bar", style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.lightGreen[600],
      ),)),
      drawer: OwnCreatedDrawer(),
    );
  }
}
class SideDrawerHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text("Side Nav Bar"),
          backgroundColor: Colors.lightGreenAccent[100],
          centerTitle: true,),
        drawer: OwnCreatedDrawer(),
        backgroundColor: Colors.white,
        body:
        Center(child: Text("Home Side Nav Bar", style: TextStyle(
          color: Colors.pinkAccent,
        ),))
    );
  }
}
class SideDrawerSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        Center(child: Text("Search Side Nav Bar", style: TextStyle(
          fontWeight: FontWeight.bold,
          color:Colors.purple[900],
        ),))
    );
  }
}