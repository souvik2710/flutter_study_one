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
        ElevatedButton(onPressed: (){
          showModalBottomSheet(
              isScrollControlled: true,
              isDismissible: true,
              backgroundColor: const Color(0xffFCF5EC),
          shape: const RoundedRectangleBorder(
          borderRadius:
          BorderRadius.vertical(top: Radius.circular(25.0))),
              context: context,
              builder: (context) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top:Radius.circular(25.0)),
                    color:Colors.amber[500],
                  ),
                  child:Row(
                    children: [
                      Text("Total Amount",style: TextStyle(color:Colors.grey),)
                    ],
                  ),
                  height: MediaQuery.of(context).size.height*0.5,
                );
              });
        }, child: Text(" Button2 ",
      style:TextStyle(color:Colors.white)))

      ],
    )
    )
        )
    );
  }
}
