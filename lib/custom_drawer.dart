import 'package:demo_project/route%20and%20navigation/routes.dart';
import 'package:flutter/material.dart';
class OwnCreatedDrawer extends StatefulWidget {
  //String name;
  //OwnCreatedDrawer({required this.name});
  @override
  State<OwnCreatedDrawer> createState() => _OwnCreatedDrawerState();
}

class _OwnCreatedDrawerState extends State<OwnCreatedDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
