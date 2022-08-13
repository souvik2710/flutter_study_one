import 'package:flutter/material.dart';
class AxisExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Amit"),
            Text("Sumit"),
            Text("Ajit"),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Amit"),
            Text("Sumit"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("2.1"),
                Text("2.2"),
              ],
            )

          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Amit"),
            Text("Sumit"),
            Row(
              children: [
                Column(
                  children: [
                    Text("3.1"),
                    Text("3.2"),
                  ],
                )
              ],
            )

          ],
        )
      ],
    ),

    );

  }
}
