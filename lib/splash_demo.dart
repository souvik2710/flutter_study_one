import 'dart:async';

import 'package:demo_project/route%20and%20navigation/routes.dart';
import 'package:flutter/material.dart';
class SplashDesign  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds:3), ()=>Navigator.pushReplacementNamed(context,
      AppRoutes.expensionListView,
    )
    );
    return Scaffold(
      body: SafeArea(
        child:Container(
          color: Colors.red[900],
          child: Column(
            children: [
              Expanded(child:
              Center(
                child: Container(
                  height: 300,
                   width:300,

                  decoration: BoxDecoration(
                      color:Colors.transparent,
                      boxShadow: [
                      BoxShadow(
                        color:  Colors.white.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(5, 5),
                      ),],
                      shape: BoxShape.circle,
                      image:DecorationImage(
                        image: NetworkImage("https://pngimg.com/uploads/cocacola_logo/cocacola_logo_PNG5.png"),
                        fit: BoxFit.fill,
                  )

          ),
                  // child:
                  // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8oXmi1On8l_YuR42kd_d0eDYrqOuyDe6kAgjdxGoR1CX95Ust-sKIoaPE8l0VHO4L9Y0&usqp=CAU",
                  //     //"https://pngimg.com/uploads/cocacola_logo/cocacola_logo_PNG5.png",
                  //      //  width:300,height: 300,
                  //   ),
                ),
              ),
                flex: 6,
              ),
              Expanded(child: Center(
                child:Text("Coca-cola Festive Celebration",style:TextStyle(fontSize: 18,
                    fontWeight:FontWeight.w800,color:Colors.white))
              ),
              flex:2
              )
            ],
          ),
        )
      )
    );
  }
}
