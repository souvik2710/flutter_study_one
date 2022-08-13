import 'package:flutter/material.dart';

class DartDemo extends StatelessWidget {
 List<int> l=[12,25,65,45,78,100];
 String t='amity edge solution';
 String x="12 + 81";
 String? txt;
  @override
  Widget build(BuildContext context) {
    //print(l);
   // List<int> reverseList=List.from(l.reversed);
    // print(reverseList);
   // String reverseString=t.split('').reversed.join();
    //print(reverseString);
    //print(t.substring(1));
   // print(t.substring(1,4));
   // print(t.substring(1,t.length-4));
   // print(x.split('+')[1]);
    //int a=int.parse(x.split('+')[1]);
    //print(a+1);
    //txt="kolkata";
    print(txt??'Delhi');
    return Container();
  }
}
