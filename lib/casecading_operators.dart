import 'package:flutter/material.dart';
class CasecadingOp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<int> t=[];
    List<int> t1=t..add(1)..add(2)..add(3)..add(4);//with casecading
    t1.add(10);//without casecading
    t.add(40);
    print(t1);
    print(t);
    List<int> n=<int>[]..add(1)..add(2)..add(3);
    print(n);
    List<int> num=[100,500,400,900,300];
    List<int> num2=[0];
    num2.addAll(num);
    print(num2);


//below is an example of a spread operator(...)
    List<int> num1=[100,500,400,900,300];
    List<int> num3=[0,...num1];
    print(num3);





    return Container();
  }
}
