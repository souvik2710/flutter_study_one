import 'package:flutter/material.dart';
class ArrayExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List<int> price=[17000,4500,2500,1200,5400,6500,7800];
    price.sort();
    print(price);
    List<String> item=['mobile','laptop','desktop','headphone'];
    //usage of casecade operator
    print(item..sort());
    List<int> number=[2,54,8,125,4,9,66,78,23];
    number.sort((a,b) =>a.compareTo(b));
    print(number);
    number.sort((a,b) {
      return b.compareTo(a);
    });
    print(number);
    List<int> num=[3,4,81,25,48,19,6,7,13];
    num.reversed;
    print(num);
    //var num2=num.reversed;
    //List<int> num2=num.reversed.toList();
    List<int> num3=num..sort();
    List<int> num2=num3.reversed.toList();
    print(num2);


    return Container();
  }
}
