import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
class CalculatorUsingHook extends HookConsumerWidget {

  //int a1=0,b1=0,c1=0;


  @override
  Widget build(BuildContext context,WidgetRef ref) {

    TextEditingController a=useTextEditingController();
    TextEditingController b=useTextEditingController();
    TextEditingController c=useTextEditingController();

    final ValueNotifier<int> a1 = useState(0);
    final ValueNotifier<int> b1 = useState(0);
    final ValueNotifier<int> c1 = useState(0);

    return Scaffold(body:
    SafeArea(
      child: Container(color:Colors.lightGreenAccent,
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
                        a1.value=int.parse('${a.text}');
                        b1.value=int.parse('${b.text}');
                        c1.value=a1.value+b1.value;
                        c.text=(c1.value).toString();
                    },
                    child: Text('+',style: TextStyle(color: Colors.deepPurple,
                        fontSize: 16.0, fontWeight: FontWeight.bold),)),
                ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: (){
                        a1.value=int.parse('${a.text}');
                        b1.value=int.parse('${b.text}');
                        c1.value=a1.value-b1.value;
                        c.text=(c1.value).toString();

                    },
                    child: Text('-',style: TextStyle(color: Colors.deepPurple,
                        fontSize: 16.0, fontWeight: FontWeight.bold),)),
                ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: (){
                        a1.value=int.parse('${a.text}');
                        b1.value=int.parse('${b.text}');
                        c1.value=a1.value*b1.value;
                        c.text=(c1.value).toString();

                    },
                    child: Text('*',style: TextStyle(color: Colors.deepPurple,
                        fontSize: 16.0, fontWeight: FontWeight.bold),)),
                ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: (){
                        double a1=double.parse('${a.text}');
                        double b1=double.parse('${b.text}');
                        double c1=a1/b1;
                        c.text=(c1).toString();

                    },
                    child: Text('/',style: TextStyle(color: Colors.deepPurple,
                        fontSize: 16.0, fontWeight: FontWeight.bold),)),

              ],
            )
          ],

        ),
      ),
    ));
  }
}
