import 'package:flutter/material.dart';
class NotesCommonWidgetClass extends StatefulWidget {
   bool isChecked;
   String txt;
  //final Function() onChecked;
  NotesCommonWidgetClass({required this.isChecked,required this.txt});

  @override
  State<NotesCommonWidgetClass> createState() => _NotesCommonWidgetClassState();
}

class _NotesCommonWidgetClassState extends State<NotesCommonWidgetClass> {

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      children: [
        Checkbox(value: widget.isChecked, onChanged: (bool? value) {
      setState(() {
        widget.isChecked = value!;
      });

    }),
        Text(
          "${widget.txt}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.black54,
            decoration:  widget.isChecked?TextDecoration.lineThrough:TextDecoration.none,
          ),
        ),
      ],
    ),);
  }
}
class CreateNotes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Column(
      children: [
        //Image.asset("assets/images/pic1.jpg",height: 100,width:100),
        //Image.asset("assets/images/sun-beach.gif"),
        Image.network("https://c.tenor.com/nhPbsJjph0gAAAAC/lunettes-de-soleil-emoji.gif",
          height: 150, width: 150,),
        NotesCommonWidgetClass(txt: '1. Rise Early', isChecked: false,),
        NotesCommonWidgetClass(txt: '2. Get some exercise', isChecked: false,),
        NotesCommonWidgetClass(txt: '3. Eat a proper healthy breakfast', isChecked: false,),


      ],
    ));
  }
}

