import 'package:flutter/material.dart';
class ListExample extends StatelessWidget {
 List<int> l=[21,15,1,9,-54,55,100,-98,78,77,25,250,-2];
  @override
  Widget build(BuildContext context) {
    // return Scaffold(body :Container(child: ListView.builder(itemCount:l.length,
    //     itemBuilder: (context,index){
    //   return Text('${l[index]}',style: TextStyle(fontSize: 16.0),);
    // }),)
    // );

    return Scaffold(body: SingleChildScrollView(
      child: Column(children: [
        ...List.generate(l.length, (index) {
          return Text('${l[index]}',style: TextStyle(fontSize: 16.0),);
        })
      ],),
    ),
    );


    // return Scaffold(body: SingleChildScrollView(
    //   child: Column(children: [
    //     for(var res in l)...[
    //       Container(child:  Text('${res}',style: TextStyle(fontSize: 16.0),))
    //     ]
    //
    //   ],),
    // ),
    // );
  }
}
