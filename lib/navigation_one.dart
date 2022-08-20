import 'package:demo_project/routes.dart';
import 'package:flutter/material.dart';
class PageOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[300],
        body:Center(child: Column(
          children: [
            Text(" Navigation page one "),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(AppRoutes.navigationTwo);

            }, child: Text(" page2 ")),

          ],
        ))
    );
  }
}
