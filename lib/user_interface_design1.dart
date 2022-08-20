import 'package:flutter/material.dart';
class DesignPage extends StatefulWidget {
  @override
  State<DesignPage> createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(body:Container( color:Colors.black12,
    child:Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Welome Back,\nJannet",
            style:TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
               ),
            CircleAvatar(
                  radius: 48, // Image radius
                  backgroundImage: NetworkImage("https://thumbs.dreamstime.com/b/scenic-view-moraine-lake-mountain-range-sunset-landscape-canadian-rocky-mountains-49666349.jpg"),

            ),

          ],),
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),

                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "search Destination  ->",
                  fillColor: Colors.white70,
              ),
            )
          ],
        ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(48), // Image radius
              child: Image.network("https://cdn.pixabay.com/photo/2020/06/21/09/48/hill-5324149__340.jpg",
                fit:BoxFit.cover,
                width:300,
                  height:300 ,),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(48), // Image radius
              child: Image.network("https://image.shutterstock.com/image-photo/beach-oceanfront-260nw-422059351.jpg",
                fit:BoxFit.cover,
                height: 300,
              width:300,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(48), // Image radius
              child: Image.network("https://cdn.pixabay.com/photo/2020/06/21/09/48/hill-5324149__340.jpg",
                fit:BoxFit.cover,
                height: 300,
                width:300,
              ),
            ),
          ),
        ],),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Explore Place",
                style:TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            DropdownButton(
              // Initial Value
              value: dropdownvalue,
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              // Array list of items
              items: items.map((String items) {
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
            Container(
              width: 100.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.redAccent,
              ),
              child: Image.network(
                "https://cdn.pixabay.com/photo/2020/06/21/09/48/hill-5324149__340.jpg",
                height: 200.0,
                width: 100.0,
              ),
            ),
            Container(
              width: 100.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.redAccent,
              ),
              child: Image.network(
                "https://image.shutterstock.com/image-photo/beach-oceanfront-260nw-422059351.jpg",
                fit:BoxFit.fitHeight,
                height: 200.0,
                width: 100.0,
              ),
            ),
            Container(
              width: 100.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.redAccent,
              ),
              child: Image.network(
                "https://cdn.pixabay.com/photo/2020/06/21/09/48/hill-5324149__340.jpg",
                fit:BoxFit.fill,
                height: 200.0,
                width: 100.0,
              ),
            ),

          ],),

      ],
      ),
    ));
  }
}
