import 'package:demo_project/route%20and%20navigation/routes.dart';
import 'package:flutter/material.dart';
class CommonWidgetDesign  extends StatefulWidget {
  final String imageLink;
  final String textValue;
  String priceValue;
  int qtyValue;

  CommonWidgetDesign({required this.imageLink,required this.textValue,required this.priceValue,
    required this.qtyValue});

  @override
  State<CommonWidgetDesign> createState() => _CommonWidgetDesignState();
}

class _CommonWidgetDesignState extends State<CommonWidgetDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(child:
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin:  const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 5.0) ,
              height:100,
              width:100,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image:NetworkImage("${widget.imageLink}"),
                  fit:BoxFit.cover,
                ),
                //borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderRadius: BorderRadius.circular(20.0),
              ),),
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("${widget.textValue}",style:TextStyle(fontSize: 12.0)),
                SizedBox(height: 15.0,),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width:30,
                      color:Colors.grey[200],
                      child:
                      Center(child: Text("-",style:TextStyle(color:Colors.black))),

                    ),
                    Container(
                      height: 30,
                      width:30,
                      color:Colors.grey[200],
                      child:
                      Center(child: Text("${widget.qtyValue}",style:TextStyle(color:Colors.black))),

                    ),
                    Container(
                      height: 30,
                      width:30,
                      color:Colors.grey[200],
                      child:
                      Center(child: Text("+",style:TextStyle(color:Colors.black))),

                    ),
                  ],
                ),

              ],
            ),

            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("${widget.priceValue}"),
                SizedBox(height: 15.0,),
                Container(
                  height: 30,
                  width:30,
                  color:Colors.yellowAccent[700],
                  child:
                  Center(child: Text("x",style:TextStyle(color:Colors.black))),
                ),
              ],
            ),
          ],
        )
    );
  }
}

class CartPage extends StatefulWidget {

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ElevatedButton(onPressed: (){
            //   Navigator.of(context).pushNamed(AppRoutes.userDesign1);
            // }, style:ElevatedButton.styleFrom(primary: Colors.white),
            // child: Text(" < ",
            // style:TextStyle(color: Colors.grey,fontSize: 12.0))),
            InkWell(
              onTap: ()
              {
                Navigator.of(context).pushNamed(AppRoutes.userDesign1);
              },
              child: Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: Icon(Icons.arrow_back_ios,size: 20,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:12.0,top:5.0,bottom: 5.0),
              child: Text(" Cart ",
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18.0,

              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:13.0,top:15.0),
              child: Text(" Thu,6th of June ",
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),),
            ),
            CommonWidgetDesign(imageLink:"https://cdn.pixabay.com/photo/2017/02/15/10/39/salad-2068220_960_720.jpg",
                textValue:"Chiken Burger ", priceValue: "rs 120/-", qtyValue: 1),
            CommonWidgetDesign(imageLink:"https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__340.jpg",
                textValue:"Chiken salad ", priceValue: "rs 220/-", qtyValue: 3),

            CommonWidgetDesign(imageLink:"https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg",
                textValue:"fruits salad ", priceValue: "rs 250/-", qtyValue: 5),
            CommonWidgetDesign(imageLink:"https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__340.jpg",
                textValue:"Chiken salad ", priceValue: "rs 220/-", qtyValue: 3),


            Divider(
              color:Colors.grey[200],
              thickness: 3,
              //height: 5,
            ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Cost"),
              Text("Rs. 1000/-"),
            ],
          ),
            Divider(
              color:Colors.grey[200],
              thickness: 3,
              //height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width:250,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFCC00),
                      shape: StadiumBorder(),

                    ), child: Text("Add to Cart ",
                      style: TextStyle(color:Colors.black,)),

                  ),
                )
              ],
            ),
            Center(
              child: SizedBox(
                width:150,
                child: Divider(
                  color:Colors.black,
                  thickness: 5,

                ),
              ),
            ),
          ],

        ),

      )
    );
  }
}
