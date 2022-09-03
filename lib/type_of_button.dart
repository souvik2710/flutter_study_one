import 'package:flutter/material.dart';
class ButtonType extends StatefulWidget {

  @override
  State<ButtonType> createState() => _ButtonTypeState();
}

class _ButtonTypeState extends State<ButtonType> {
  var isSelected = false;
  int volume=0;
  var icon = Icons.favorite_border;
  String dropdownvalue = 'Profile';

  var items = [
    'Profile',
    'Settings',
    'Account',
    'Go Premium',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:SafeArea(
      child: Column(
        children: [
          Wrap(
            children: [
              TextButton(
                  onPressed: (){},
                  child: Text("Text Button "),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Colors.amber,
                  ),),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add, size: 18),
                label: Text("TEXT BUTTON"),
              ),
              Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 5.0)),
              IconButton(
                icon: Icon(icon),
                color: Colors.black,
                onPressed: () {
                  // Respond to icon toggle
                  setState(() {
                    isSelected = !isSelected;
                    icon = isSelected ? Icons.favorite : Icons.favorite_border;
                  });
                },
              ),
              Padding(padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 0.0)),

              FloatingActionButton(
                child: Icon(Icons.person),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                onPressed: () {},
              ),
              Padding(padding: EdgeInsets.fromLTRB(20.0, 10.0, 5.0, 5.0)),

              IconButton(
                icon: const Icon(Icons.volume_up),
                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                    volume += 10;
                  });
                },
              ),
              Text('Volume : $volume')

            ],

          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(padding: const EdgeInsets.all(10.0)),
                  DropdownButton(
                    focusColor: Colors.yellow,
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                  Padding(padding: const EdgeInsets.all(10.0)),
                  PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("Profile"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Account"),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Text("Settings"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("About Us"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Go Premium"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("Logout"),
                        value: 1,
                      ),
                    ],
                  ),

                ],
              ),

            ],
          ),

        ],
      ),
    ),
    );
  }
}
