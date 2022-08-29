import 'package:demo_project/route%20and%20navigation/routes.dart';
import 'package:flutter/material.dart';

import 'navigation_one.dart';
import 'navigation_three.dart';
class PageMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[300],
        body:Center(child:
        Column(
          children: [
            Text(" Navigation main  page "),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(AppRoutes.navigationOne);

            }, child:Text(" page1 ") ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return PageThree();
              }
              ));
            }, child: Text(" page3 ")),

          ],

        ),

        )

    );
  }
}
