import 'package:flutter/material.dart';
//Network Image,Asset Image
class ImageWithText extends StatelessWidget {
  final String placeName;

  final Color placeColor;
  final double placeFontSize;

  final String placeLink;

  ImageWithText({required this.placeName,required this.placeLink,required this.placeColor,required this.placeFontSize});
  @override
  Widget build(BuildContext context) {
    return Container(child:Row(
      children: [
        Image.network("$placeLink",height: 100,width: 100,),
        Text("$placeName",
            style:TextStyle(
              color: placeColor ,
              fontSize: placeFontSize,
              fontWeight: FontWeight.w900,

            )
        ),

      ],
    ),);
  }
}
class SideScene extends StatelessWidget {
  const SideScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Column(
      children: [
        ImageWithText(placeName: " Sea Beach",placeFontSize: 16.0,placeColor: Colors.lightGreenAccent, placeLink: "https://image.shutterstock.com/image-photo/beach-oceanfront-260nw-422059351.jpg"),
        ImageWithText(placeName: "  Mountain",placeFontSize: 20.0 ,placeColor: Color(0xffED90E1), placeLink: "https://thumbs.dreamstime.com/b/scenic-view-moraine-lake-mountain-range-sunset-landscape-canadian-rocky-mountains-49666349.jpg"),
        ImageWithText(placeName: " Hills",placeFontSize: 18.0 ,placeColor: Color.fromRGBO(250,128,114,1), placeLink: "https://cdn.pixabay.com/photo/2020/06/21/09/48/hill-5324149__340.jpg"),

      ],
    ),);
  }
}

