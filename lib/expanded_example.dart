import 'package:flutter/material.dart';

class FrontView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        Row(
          children: [
            Expanded(
                flex:1,
                child: Container(
              color: Colors.red[800]
            )),
            Expanded(
                flex:3,
                child: Container(
                color: Colors.blue[800],
                    child:Column(
                      children: [
                        Expanded(flex:1,
                          child: Row(
                          children: [
                            Expanded(child: Container(
                              color:Colors.yellow[200]
                            )),
                            Expanded(child: Container(
                                color:Colors.yellow[600]
                            )),
                            Expanded(child: Container(
                                color:Colors.yellow[800]
                            ))
                          ],),
                        ),
                        Expanded(flex:5,
                            child: Container(
                              //child: Image.network("https://c.tenor.com/nhPbsJjph0gAAAAC/lunettes-de-soleil-emoji.gif"),
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image:NetworkImage("https://c.tenor.com/nhPbsJjph0gAAAAC/lunettes-de-soleil-emoji.gif"),
                               //fit: BoxFit.fill,
                               fit: BoxFit.fitWidth,
                             )
                           ),
                            ))
                      ],)
            ),
            )
          ],
        ));
  }
}
