import 'package:flutter/material.dart';
class ImageExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red , BlendMode.color),
         child:  Image.network("https://thumbs.dreamstime.com/b/flowers-4929984.jpg"),
                 
          ),
          
          ShaderMask(
            blendMode : BlendMode.modulate,
          //by default blendmode is BlendMode.modulate
         // blendMode : BlendMode.srcATop,
              shaderCallback: (Rect bounds) { 
                return LinearGradient(colors: [Colors.red,Colors.purple,Colors.blue[800]!]).createShader(bounds);
              },
              child: Image.network("https://thumbs.dreamstime.com/b/flowers-4929984.jpg")
          ),
          Image.network("https://thumbs.dreamstime.com/b/flowers-4929984.jpg"),

        ],
      )
    );
  }
}
