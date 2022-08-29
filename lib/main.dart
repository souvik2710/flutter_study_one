import 'package:demo_project/route%20and%20navigation/routes.dart';
import 'package:demo_project/user_interface_design1.dart';
import 'package:demo_project/user_interface_design2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ImageWithtext.dart';
import 'array_example.dart';
import 'bottom_navigation_bar.dart';
import 'calculator.dart';
import 'calwithseperatevalue.dart';

import 'casecading_operators.dart';
import 'checkbox_one_selection.dart';
import 'checkbox_one_selection_common_widget.dart';
import 'expanded_example.dart';
import 'fullcalculator.dart';
import 'dartrelated.dart';
import 'listExample.dart';
import 'mainaxis_crosaxis_example.dart';
import 'mapping_example.dart';
import 'mcq_using_radio_button.dart';
import 'route and navigation/navigation_main.dart';
import 'notes.dart';
import 'notes_using_common_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp
    //   (
    //     theme: ThemeData(
    //       fontFamily: "Poppins"
    //     ),
    //     home: NotesCreate()
    //  );

    // return MaterialApp(
    //     theme: ThemeData(
    //       fontFamily: "Roboto"
    //     ),
    //     home:
    //     SideScene()
    //ArrayExample()
    //CasecadingOp()
    //     );

    return MaterialApp(
      showSemanticsDebugger: false,
        theme: ThemeData(
              fontFamily: "Poppins",
            appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange,
               // statusBarIconBrightness: Brightness.dark,
                //statusBarBrightness: Brightness.light,
              ),

                //color:Colors.orange
        ),

             ),
        onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),
        home:
       // PageMain()
        //Calculator()
        //Fullcalculator()
        //HomePage()
        //SecondPage()
       //DartDemo()
      //ListExample()
      // CreateNotes()
     // DesignPage()
      //CreateCheckBox()
      //SeperateValuecalculator()
      //McqPattern()
      // FrontView()
      //OnceSelection()
      //AxisExample()
      //MappingExample()
        BottomNav()
    );
  }

}
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isAmber=true;
  int val=0;
  int abc=0;
  TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    //final Color changableColor=Colors.amber[100]!;
    //final Color? changableColor=Colors.amber[100];


    return Scaffold(body: Container(color: isAmber?Colors.amber[100]:Colors.blue[100],
      child: Column(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [
        TextField(controller: textEditingController ,),
       Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [Text('$val'),Text('$abc'),Text('00')],),
       Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
        ElevatedButton(onPressed: (){
          setState(() {
            isAmber=! isAmber;//=! means not equals to
            print(isAmber);
          });
        }, child: Text('color change')),
        ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.red),onPressed: (){
          setState(() {
            //val+=1;
            abc=int.parse('${textEditingController.text}');
            abc+=1;
            textEditingController.text=abc.toString();
          });
        }, child: Text('Increment',style: TextStyle(color: Colors.green),)),
        ElevatedButton(onPressed: (){
          setState(() {
            val-=1;
          });
        }, child: Text('Decrement')),
      ],)
    ],),),);
  }
}

