import 'package:flutter/material.dart';
class NotesCreate extends StatefulWidget {

  @override
  State<NotesCreate> createState() => _NotesCreateState();
}

class _NotesCreateState extends State<NotesCreate> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
List<String> txt=["1.Rise Early","2.Get some exercise","3.Eat a proper healthy breakfast"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: Column(
        children: [
          Row(children: [
          Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            txt[0],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black54,
              fontFamily: "Roboto",
              decoration:  isChecked1?TextDecoration.lineThrough:TextDecoration.none,
            ),
          ),
          ),
            Checkbox(value: isChecked1, onChanged: (bool? value) {
                        setState(() {
                          isChecked1 = value!;
                          //print(isChecked1);
                        //   if(isChecked1==true)
                        //     {
                        //       txt[0]="";
                        //     }
                        //   else{
                        //     txt[0]="1.Rise Early";
                        //   }
                        //
                         });
                      },
                  ),
    ], ),
          Row(children: [
            Container(
              padding: EdgeInsets.all(16.0),

              child: Text(
                txt[1],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black54,
                  decoration:  isChecked2?TextDecoration.lineThrough:TextDecoration.none,
                ),
              ),
            ),
            Checkbox(value: isChecked2, onChanged: (bool? value) {
              setState(() {
                isChecked2 = value!;

                // if(isChecked2==true)
                // {
                //   //txt[1]="";
                //
                //
                // }
                // else{
                //   txt[1]="2.Get some exercise";
                // }
              });
            },
            ),

          ], ),
          Row(children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                txt[2],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black54,
                  decoration:  isChecked3?TextDecoration.lineThrough:TextDecoration.none,
                ),
              ),
            ),
            Checkbox(value: isChecked3, onChanged: (bool? value) {
              setState(() {
                isChecked3 = value!;
                // if(isChecked3==true)
                // {
                //   txt[2]="";
                // }
                // else{
                //   txt[2]="3.Eat a proper healthy breakfast";
                // }
              });
            },
            ),

          ], ),

        ],
      ),


    );

  }
}
