import 'package:flutter/material.dart';
class BottomSheetDesignView  extends StatelessWidget {
  const BottomSheetDesignView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:
        ElevatedButton(onPressed: ()
        {
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
      )

    );
  }
}
