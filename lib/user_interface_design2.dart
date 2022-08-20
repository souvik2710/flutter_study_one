import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isselected1=false;
  bool isselected2=true;

  bool isselect1=false;
  bool isselect3=false;
  bool isselect2=true;

  String dropdownvalue = 'Travel Date';

  // List of items in our dropdown menu
  var cList = [
    'Travel Date',
    'A',
    'B',
    'C',
    'D',
    'E',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(primary:true,
      backgroundColor:Color(0xffF9F9FB),
      body:SafeArea(
        child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(" Where are you Travelling to? ",
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ],),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Type ",
                  fillColor: Colors.white70,
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(style:ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  side:BorderSide(color: isselected1?Colors.black:Colors.white),
                    borderRadius: BorderRadius.circular(30),
                ),
              ),

                  onPressed: (){
                setState(() {
                  isselected1=true;
                  isselected2=false;

                });
              }, child:Text(" Anytime ",style:TextStyle(color: Colors.black)),
              ),
              ElevatedButton(style:ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  side:BorderSide(color: isselected2?Colors.black:Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
                onPressed: (){
                  setState(() {
                    isselected2=true;
                    isselected1=false;

                  });
                }, child:Text(" Fixed Timeline ",style:TextStyle(color: Colors.black)),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton(
                // Initial Value
                value: dropdownvalue,
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),
                // Array list of items
                items: cList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(" How many traveller's do you want to\n Travel with? ",
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(style:ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  side:BorderSide(color: isselect1?Colors.black:Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

                onPressed: (){
                  setState(() {
                    isselect1=true;
                    isselect2=false;
                    isselect3=false;

                  });
                }, child:Text(" 1 ",style:TextStyle(color: Colors.black)),
              ),
              ElevatedButton(style:ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  side:BorderSide(color: isselect2?Colors.black:Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
                onPressed: (){
                  setState(() {
                    isselect2=true;
                    isselect1=false;
                    isselect3=false;

                  });
                }, child:Text(" 2 ",style:TextStyle(color: Colors.black)),
              ),
              ElevatedButton(style:ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  side:BorderSide(color: isselect3?Colors.black:Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
                onPressed: (){
                  setState(() {
                    isselect3=true;
                    isselect2=false;
                    isselect1=false;

                  });
                }, child:Text(" A Group ",style:TextStyle(color: Colors.black)),
              )
            ],

          )
            ],
          ),
      ),);
  }
}
