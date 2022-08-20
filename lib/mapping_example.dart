import 'package:flutter/material.dart';
class MappingExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Map<String,String> t={'A':'yellow','B':'BLACK','C':'Red','D':'Dark Blue'};
    print(t);
    print(t['B']);
    Map<int,String> z={};
    z[0]='Mango';
    z[1]='Apple';
    z[2]='Banana';
    z[3]='Grapes';
    print(z);
    z.addAll({5:'Guava',6:'pineapple'});
    print(z);
    Map<String,dynamic> stud={'roll':101,'name':'sumit','course':'php','marks':88};
    stud.remove('course');
    print(stud);
    stud.clear();
    print(stud);
    Map<String,dynamic> emp={'emp_id':101,'name':'sumit','designation':'designer','salary':88000};
    emp.keys.forEach((e) {
      print('key=>$e');
    });
    emp.values.forEach((e) {
      print('value=>$e');
    });
    emp.forEach((k, val) {
      print('key=>$k,value=>$val');
    });
    print(emp.containsValue(101));
    print(emp.containsKey(201));
    emp.removeWhere((key, value) => value.toString().startsWith('s'));
    print(emp);//sumit will be removed
    Map<int,String> x={0:'Apple',1:'Grapes',2:'Mango',3:'pineApple',4:'Lichi'};
    //list of map
    List<Map<String,dynamic>> pr=[{'item':'mobile','price':12000},
                                     {'item':'bag','price':1000},
                                     {'item':'headphone','price':1999},
                                      ];
    pr.sort((a, b) => b["price"].compareTo(a["price"])); //desc order
    print(pr);
    pr.sort((a, b) => a["price"].compareTo(b["price"]));//asc order
    print(pr);

    return Container();
  }
}
