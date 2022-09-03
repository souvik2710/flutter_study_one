import 'package:flutter/material.dart';
class ShadowEffect  extends StatelessWidget {
  const ShadowEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:SafeArea(
          child:Center(
            child:
              Container(
               // color:Colors.lightGreen[300],
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(5, 5),//5,5,-5,-5,x axis,yaxis
                  ),
                  // BoxShadow(
                  //   color: Colors.grey.withOpacity(0.5),
                  //   spreadRadius: 2,
                  //   blurRadius: 7,
                  //   offset: Offset(-5, -5),//5,5,-5,-5,x axis,yaxis
                  // )
                ],
                color:Colors.lightGreen[300],

              ),
              child:
              Center(child:Text("Shadow Effect",style:
              TextStyle(color:Colors.green[700],
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              ),),
                height: 50.0,
                width:200.0,
              ))
          )


    );
  }
}
