import 'package:demo_project/route%20and%20navigation/routes.dart';
import 'package:flutter/material.dart';
class PageFour extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        body:Center(child: Column(
          children: [
            Text(" Navigation page four "),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.navigationTwo, (route) => false);

            }, child: Text(" till page2 "))
          ],
        ))
    );
  }
}
