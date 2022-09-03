import 'package:flutter/material.dart';
import 'package:versatile_gradient_text/versatile_gradient_text.dart';
class GradientText extends StatelessWidget {
  const GradientText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
          child: VersatileGradientText(
            textString: 'Gradient Text',
            colorOne: Colors.yellow, colorTwo: Colors.deepOrange,
            fontSize: 40, versatileGradientType: VersatileGradientType.radial,)
      ),
    );
  }
}
