import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class Fullcalculator extends StatefulWidget {

@override
State<Fullcalculator> createState() => _FullcalculatorState();
}
class _FullcalculatorState extends  State<Fullcalculator> {
  TextEditingController a=TextEditingController();
  TextEditingController b=TextEditingController();
  TextEditingController c=TextEditingController();
  int temp=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color:Colors.lightGreenAccent,
      child: Column
        (
        children:
        [
          TextField(controller: a,),

          Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                     String a1="1";
                     a.text+=a1;
                    });
                  },
                  child: Text('1',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {
                      String a1="2";
                      a.text+=a1;

                    });
                  },
                  child: Text('2',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1="3";
                      a.text+=a1;

                    });
                  },
                  child: Text('3',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1="4";
                      a.text+=a1;

                    });
                  },
                  child: Text('4',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1="5";
                      a.text+=a1;

                    });
                  },
                  child: Text('5',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),

            ],
          ),
          Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1="6";
                      a.text+=a1;
                    });
                  },
                  child: Text('6',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {
                      String a1="7";
                      a.text+=a1;

                    });
                  },
                  child: Text('7',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1="8";
                      a.text+=a1;

                    });
                  },
                  child: Text('8',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1="9";
                      a.text+=a1;

                    });
                  },
                  child: Text('9',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1="0";
                      a.text+=a1;

                    });
                  },
                  child: Text('0',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),

            ],
          ),

          Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {
                      String a1=" + ";
                      a.text+=a1;


                      //int t;
                      //t=int.parse(a.text);
                      //temp+=t;
                      //a.text=temp.toString();
                    });
                  },
                  child: Text('+',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {
                      String a1="-";
                      a.text+=a1;

                    });
                  },
                  child: Text('-',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1="*";
                      a.text+=a1;

                    });
                  },
                  child: Text('*',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1="/";
                      a.text+=a1;

                    });
                  },
                  child: Text('/',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                     String a1=a.text;
                     //  String b='${a1}';
                     // print(b);
                      Parser p=Parser();
                      Expression exp=p.parse(a1);
                     ContextModel cm = ContextModel();
                     double eval = exp.evaluate(EvaluationType.REAL, cm);
                      print(eval);
                      a.text=eval.toString();
                    });
                  },
                  child: Text('=',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),

            ],
          ),
        ],

      ),
    ));
  }
}

