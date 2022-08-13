import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {

  @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends  State<Calculator> {
  TextEditingController a=TextEditingController();
  TextEditingController b=TextEditingController();
  TextEditingController c=TextEditingController();
  int a1=0,b1=0,c1=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color:Colors.lightGreenAccent,
      child: Column
      (
        children:
        [
          Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [Text('Enter First Value'),
            Text('Enter Second Value'),Text('Result')],),
          //TextField(controller: a,),
          //TextField(controller: b,),
          //TextField(controller: c,),
        Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: a,),
            )),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(controller: b,),
              ),
            )) ,
            Expanded(child: TextField(controller: c,)),
          ],
        ),


          Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: (){
                    setState(() {

                      a1=int.parse('${a.text}');
                      b1=int.parse('${b.text}');
                      c1=a1+b1;
                      c.text=(c1).toString();
                    });
                  },
                  child: Text('+',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: (){
                    setState(() {

                      a1=int.parse('${a.text}');
                      b1=int.parse('${b.text}');
                      c1=a1-b1;
                      c.text=(c1).toString();
                    });
                  },
                  child: Text('-',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: (){
                    setState(() {

                      a1=int.parse('${a.text}');
                      b1=int.parse('${b.text}');
                      c1=a1*b1;
                      c.text=(c1).toString();
                    });
                  },
                  child: Text('*',style: TextStyle(color: Colors.deepPurple,
                    fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: (){
                    setState(() {

                      double a1=double.parse('${a.text}');
                      double b1=double.parse('${b.text}');
                      double c1=a1/b1;
                      c.text=(c1).toString();
                    });
                  },
                  child: Text('/',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),

            ],
              )
        ],

       ),
    ));
  }
}
