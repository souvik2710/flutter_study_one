import 'package:flutter/material.dart';
class CheckboxCommonWidgetClass extends StatefulWidget {
  //bool isChecked;
  String txt;
  int index;
  int selectedIndex;
  //final Function() onChecked;
  CheckboxCommonWidgetClass({required this.txt,required this.index,
  required this.selectedIndex});

  @override
  State<CheckboxCommonWidgetClass> createState() => _CheckboxCommonWidgetClassState();
}

class _CheckboxCommonWidgetClassState extends State<CheckboxCommonWidgetClass> {

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      children: [
        Checkbox(
            //value: widget.isChecked,
            value: widget.selectedIndex==widget.index?true:false,
            onChanged: (bool? value) {
          setState(() {
            //widget.isChecked = value!;
            widget.selectedIndex=widget.index;
            print("***${widget.selectedIndex}");
          });
        }),
        Text(
          "${widget.txt}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.black54,
          ),
        ),
      ],
    ),);
  }
}
class CreateCheckBox extends StatefulWidget {

  @override
  State<CreateCheckBox> createState() => _CreateCheckBoxState();
}

class _CreateCheckBoxState extends State<CreateCheckBox> {
  int sIndex=-1;
  bool t=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(body:Column(
      children: [
        //Image.asset("assets/images/pic1.jpg",height: 100,width:100),
        //Image.asset("assets/images/sun-beach.gif"),
        Image.network("https://c.tenor.com/nhPbsJjph0gAAAAC/lunettes-de-soleil-emoji.gif",
          height: 150, width: 150,),
        CheckboxCommonWidgetClass(txt: '1. Rise Early', index: 0,selectedIndex: sIndex),
        CheckboxCommonWidgetClass(txt: '2. Get some exercise', index: 1,selectedIndex:sIndex ),
        CheckboxCommonWidgetClass(txt: '3. Eat a proper healthy breakfast', index: 2,
                              selectedIndex: sIndex,),


      ],
    ));
  }
}

