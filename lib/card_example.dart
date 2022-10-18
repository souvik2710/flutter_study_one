import 'package:flutter/material.dart';
class CardExample  extends StatefulWidget {

  @override
  State<CardExample> createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  bool x=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            elevation: 8,
            child: ExpansionTile(
              title: Text("Who is the father of Computer science?"  ,
                style: TextStyle(color:Colors.red,fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
              trailing:  Icon(x==false?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up,color:x==false?Colors.red[800]:Colors.green[800],
                size: 32,),
                  onExpansionChanged: (bool t) {
                    setState(() {
                      x = t;
                      //debugPrint("$t&$x");
                    });
                  },
              children: <Widget>[
                ListTile(
                  title: Text("Ans .Charles Babbage",
                    style: TextStyle(color:Colors.blue,
                        fontWeight: FontWeight.w700,),
                  ),
                )
              ],

    ),
            ),
        ),
        ),
    );
  }
}
