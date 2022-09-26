import 'package:flutter/material.dart';
class ExpansionView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTile(
                  title: Text("Expansion Tile 1"),
                  subtitle:Text("Expansion subtitle ") ,
                  trailing:Icon(Icons.account_circle) ,
                  onExpansionChanged: (bool t){
                    debugPrint("$t");
                  },
                children: [
                  Image.network("https://w7.pngwing.com/pngs/793/681/png-transparent-the-coca-cola-company-fizzy-drinks-beverages-mangolia-food-text-logo.png"),
                ],
               ),
              ...List.generate(listMonthDataClass.length, (index) {
                return CommonExpansionDesign(heading: "${listMonthDataClass[index].heading}",
                    subheading: "${listMonthDataClass[index].subHeading}",
                    description: "${listMonthDataClass[index].description}");
              })
            ],
           ),
        ),
      ),
    ),);
  }
}
class CommonExpansionDesign  extends StatefulWidget {
  final String heading;
  final String subheading;
  final String description;
  CommonExpansionDesign({required this.heading,required this.subheading,required this.description});

  @override
  State<CommonExpansionDesign> createState() => _CommonExpansionDesignState();
}

class _CommonExpansionDesignState extends State<CommonExpansionDesign> {
  bool x=false;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 8,
        child: ExpansionTile(
          title: Text("${widget.heading}",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          subtitle: Text("${widget.subheading}", style: TextStyle(fontSize: 12.0,color: Colors.grey),),
          trailing: Icon(x==false?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up,color:x==false?Colors.red[800]:Colors.green[800],
            size: 32,),
          onExpansionChanged: (bool t)
          {
            setState(() {
                x=t;
                debugPrint("$t&$x");
             });
          },
          children: <Widget>[
            ListTile(
              title: Text("${widget.description}",
                style: TextStyle(fontWeight: FontWeight.w700,decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class MonthDataClass
{
  String heading;
  String subHeading;
  String description;
  MonthDataClass({required this.heading,required this.subHeading,required this.description});
}
List <MonthDataClass> listMonthDataClass=[
    MonthDataClass(heading: "Jan",subHeading: "This is Jan",description: "Jan has 31 days"),//object calling
  MonthDataClass(heading: "Feb",subHeading: "This is Feb",description: "Feb has 28/29 days"),//object calling
  MonthDataClass(heading: "March",subHeading: "This is March",description: "March has 31 days"),//object calling
  MonthDataClass(heading: "April",subHeading: "This is April",description: "April has 30 days"),//object calling
  MonthDataClass(heading: "May",subHeading: "This is May",description: "May has 31 days"),//object calling
  MonthDataClass(heading: "June",subHeading: "This is June",description: "June has 30 days"),//object calling

];