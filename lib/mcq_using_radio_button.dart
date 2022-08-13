import 'package:flutter/material.dart';
class McqPattern extends StatefulWidget {

  @override
  State<McqPattern> createState() => _McqPatternState();
}

class _McqPatternState extends State<McqPattern> {
  String? qs1,qs2;
  int marks=0;
  var isEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Column(
      children: [
        Text("1. 5x+32= 4-2x what is the value of x ?"),
        RadioListTile(
          title: Text("-4"),
          value: "-4",
          groupValue: qs1,
          onChanged: (value){
            setState(() {
              qs1 = value.toString();
            });
          },
        ),

        RadioListTile(
          title: Text("-3"),
          value: "-3",
          groupValue: qs1,
          onChanged: (value){
            setState(() {
              qs1 = value.toString();
            });
          },
        ),

        RadioListTile(
          title: Text("4"),
          value: "4",
          groupValue: qs1,
          onChanged: (value){
            setState(() {
              qs1 = value.toString();
            });
          },
        ),
        Text("2.  Who is the father of Computers? "),
        ListTile(
          title: const Text('James Gosling'),
          leading: Radio(value: "James Gosling", groupValue: qs2, onChanged:
                (value) {
          setState(() {
            qs2 = value.toString();
          });
        }),
        ),
      ListTile(
        title: const Text('Charles Babbage'),
        leading: Radio(value: "Charles Babbage", groupValue: qs2, onChanged:
            (value) {
          setState(() {
            qs2 = value.toString();
          });
        }),
      ),
      ListTile(
        title: const Text('Dennis Ritchie'),
        leading: Radio(value: "Dennis Ritchie", groupValue: qs2, onChanged:
            (value) {
          setState(() {
            qs2 = value.toString();
          });
        }),
      ),
        ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red),

              onPressed: isEnabled ?() {
                setState(() {
                  if(qs1=="-4")
                    {
                      marks+=10;
                      print("Qs1 is Right");
                    }else
                      {
                        marks+=0;
                        print("Qs1 is wrong");
                      }
                  if(qs2=="Charles Babbage")
                  {
                    marks+=10;
                    print("Qs2 is Right");
                  }else
                  {
                    marks+=0;
                    print("Qs2 is wrong");
                  }
                  print(marks);
                  isEnabled=false;
                });
              }:null,
          child:Text("Submit"),
      ),
      ],

    ),

    );
  }
}
// Row(crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text("1. 5x+32= 4-2x what is the value of x ?"),
// Container(
// child: RadioListTile(
// title: Text("-4"),
// value: "-4",
// groupValue: qs1,
// onChanged: (value){
// setState(() {
// qs1 = value.toString();
// });
// },
// ),
// height: 100,
// width: 100,
//
// ),
