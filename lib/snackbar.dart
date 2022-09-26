import 'package:flutter/material.dart';
class CustomSnackBar extends StatelessWidget {
  const CustomSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body:SafeArea(
    child:Center(
    child:Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Demo Snack Bar")));
        }, child: Text(" Button1 ",
        style:TextStyle(color:Colors.white))
        ),


      ],
    )
    )
        )
    );
  }
}
