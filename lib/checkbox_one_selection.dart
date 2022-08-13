import 'package:flutter/material.dart';



class OnceSelection extends StatefulWidget {

  @override
  State<OnceSelection> createState() => _OnceSelectionState();
}

class _OnceSelectionState extends State<OnceSelection> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool ischecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Column(
      children: [
        Text("Rise Early",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
        Checkbox(value: isChecked1, onChanged: (bool? value) {
          setState(() {
            isChecked1 = value!;
            isChecked2 = false;
            ischecked3 = false;
          });
        }),
        Text("Get some exercise",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
        Checkbox(value: isChecked2, onChanged: (bool? value) {
          setState(() {
            isChecked2 = value!;
            isChecked1 = false;
            ischecked3 = false;
          });
        }),
        Text("Eat a proper healthy breakfast",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
        Checkbox(value: ischecked3, onChanged: (bool? value) {
          setState(() {
            ischecked3 = value!;
            isChecked1 = false;
            isChecked2 = false;
          });
        })
      ],
    ),);
  }
}



