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

      drawer: Drawer(
        child: ListView(
          children: [
           //DrawerHeader(child: Text("Main Menu")),
            UserAccountsDrawerHeader(
                accountName: Text("Ankita"),
                accountEmail: Text("abc@gmail.com"),
              currentAccountPicture: Image.network("https://st2.depositphotos.com/4035913/6124/i/600/depositphotos_61243831-stock-photo-letter-s-logo.jpg"),
              currentAccountPictureSize: Size.square(100),
            ),

            ListTile(title: Text("Home"),leading: Icon(Icons.home),
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.sideDrawerHome);

            },),
            ListTile(title: Text("User"),leading: Icon(Icons.account_circle),
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.sideDrawerUser);

            },),
            ListTile(title: Text("Search"),leading: Icon(Icons.search),
              onTap: (){
                Navigator.of(context).pushNamed(AppRoutes.sideDrawerSearch);

              },),
          ],
        ),
      ),
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[900],
        appBar:AppBar(title:Text("Tab Bar View Design"),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.account_circle),),
            Tab(icon: Icon(Icons.chat),),
          ],
        ),),
        body:
          TabBarView(
            children: [
              TapBarOne(),TapBarTwo()
            ],
          )
          // Center(child:Column(
          //   children: [
          //     Text(" Home Bottom Nav Bar",style: TextStyle(
          //       color:Colors.orange,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 18.0,
          //     ),)
          //   ],
          // ))
      ),
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
              color: Colors.pink,
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
        backgroundColor: Colors.lightGreen[700],
        body:
        Center(child: Column(
          children: [
            Text("User Bottom Nav Bar", style: TextStyle(
              color: Colors.white,
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
              color: Colors.amber,
            ),)
          ],
        ))
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
        Center(child: Text("Search Side Nav Bar", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.lightGreen[600],
        ),)),
      drawer: OwnCreatedDrawer(),
    );
  }
}
class TapBarOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        body:
        Center(child: Text("tap Bar Page One", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.lightGreen[600],
        ),))
    );
  }
}
class TapBarTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        body:
        Center(child: Text("tap Bar Page Two", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.amber[900],
        ),))
    );
  }
}