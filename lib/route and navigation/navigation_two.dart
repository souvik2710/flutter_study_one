import 'package:demo_project/route%20and%20navigation/routes.dart';
import 'package:flutter/material.dart';
class PageTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body:Center(child: Column(
          children: [
            Text(" Navigation page two "),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(AppRoutes.navigationFour);

            }, child: Text(" page4 ")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            //this will go to the second page
            }, child: Text(" pop ")),
          ],
        ))
    );
  }
}
