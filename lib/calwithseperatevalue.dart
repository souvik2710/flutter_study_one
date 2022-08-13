import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class SeperateValuecalculator extends StatefulWidget {

  @override
  State<SeperateValuecalculator> createState() => _SeperateValuecalculator();
}
class _SeperateValuecalculator extends  State<SeperateValuecalculator> {
  TextEditingController a=TextEditingController();
  TextEditingController b=TextEditingController();
  TextEditingController c=TextEditingController();
  int temp=0;
  double res=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color:Colors.lightGreenAccent,
      child: Column
        (
        children:
        [
          TextField(controller: a,readOnly: true,),

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
                      String a1=" - ";
                      a.text+=a1;

                    });
                  },
                  child: Text('-',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1=" * ";
                      a.text+=a1;

                    });
                  },
                  child: Text('*',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1=" / ";
                      a.text+=a1;

                    });
                  },
                  child: Text('/',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 16.0, fontWeight: FontWeight.bold),)),
              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.black12),
                  onPressed: (){
                    setState(() {

                      String a1=a.text;
                       print(a1.split(' '));
                       int t1=int.parse(a1.split(' ')[0]);
                      print(t1);
                       String sign=a1.split(' ')[1];
                      print(sign);
                      int t2=int.parse(a1.split(' ')[2]);
                      print(t2);

                     switch(sign)
                      {
                        case "+":
                          temp=t1+t2;
                         a.text=temp.toString();
                          break;
                        case "-":
                          temp=t1-t2;
                          a.text=temp.toString();
                          break;
                        case "*":
                          temp=t1*t2;
                          a.text=temp.toString();
                          break;
                        case "/":
                           res=t1/t2;
                           temp=res.toInt();
                           a.text=temp.toString();
                          break;
                      }



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

