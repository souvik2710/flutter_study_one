import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget {
  ButtonStyle kButtonstyle = ElevatedButton.styleFrom(
    primary: Colors.blue[900],
    onPrimary: Colors.white,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 20,
                    ),
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 20.0, 0),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .5,
                    height: 55.0,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xfff3f9ff),
                          onPrimary: Color(0xff518dd1),
                          shadowColor: Colors.black.withOpacity(0.5),
                          elevation: 4,
                        ),
                        onPressed: () {

                        },
                        child: Center(
                          child: Text(
                            'CANCEL',
                            style: TextStyle(
                              fontFamily: "proxima",
                              fontSize: 15.0,
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CommonLoginSwitchButton(
                    buttonText: " Login Button ", buttonOnTap: () {},),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 30.0,
                    child: ElevatedButton(onPressed: () {},
                      style:kButtonstyle,
                      child: Text("Click here "),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      height: 50,
                     // width: 150,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),//outSidePadding(left to right)
                      child:  ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff518dd1),
                          side: BorderSide(width: 1.0, color: Colors.red,),
                          onPrimary:  Colors.white,
                          // onPrimary: isDark? isMobile ? Colors.white : Colors.white: Color(0xff518dd1),
                          shadowColor: Colors.black.withOpacity(0.5),
                          padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                          //vertical: insideVerticalPadding,horizontal: insideHorizontalPadding
                          shape:RoundedRectangleBorder(
                            borderRadius:  BorderRadius.circular(20.0),
                          ),

                          elevation: 4,
                        ),
                        onPressed: (){

                        },

                        child: Center(
                          child: Text(
                            " Click Here ",
                            overflow: TextOverflow.ellipsis,
                            // softWrap: false,
                            style: TextStyle(
                                //fontFamily: "proxima",
                                fontSize: 14.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                      )
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed:() {},
                    child: Wrap(
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 24.0,
                        ),
                        SizedBox(
                          width:10,
                        ),
                        Text("Click me!", style:TextStyle(fontSize:20)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_circle),
                      label: Text("")),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton.icon(   // <-- ElevatedButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.download,
                      size: 24.0,
                    ),
                    label: Text('Download'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextButton.icon(     // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.download,
                      size: 24.0,
                    ),
                    label: Text('Download'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  OutlinedButton.icon( // <-- OutlinedButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.download,
                      size: 24.0,
                    ),
                    label: Text('Download'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Download'), // <-- Text
                        SizedBox(
                          width: 5,
                        ),
                        Icon( // <-- Icon
                          Icons.download,
                          size: 24.0,
                        ),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  FloatingActionButton.extended(
                    label: Text('Download'), // <-- Text
                    //backgroundColor: Colors.black,
                    icon: Icon( // <-- Icon
                      Icons.download,
                      size: 24.0,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                OutlinedButton(onPressed: (){}, child: Text(" Submit "),
                  style:OutlinedButton.styleFrom(
                    side:BorderSide(width:4.0,color:Colors.red),
                      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), // <-- Radius
                      // ),
                  )
                ),
                  SizedBox(
                    height: 20.0,
                  ),
                  OutlinedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                    ),
                    child: const Text("Button text"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                ],
              ),
            )
        )
    );
  }
}

class CommonLoginSwitchButton extends StatelessWidget {
  String buttonText;
  Function() buttonOnTap;

  CommonLoginSwitchButton({required this.buttonText, required this.buttonOnTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      width: 100.0,
      child: ElevatedButton(
        onPressed: buttonOnTap,
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(228, 241, 255, 0.44),
          //Color(0xfff3f9ff),
          onPrimary: Colors.white,
          //Color(0xff518dd1),
          shadowColor: Colors.black.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), // <-- Radius
          ),
          elevation: 4,
        ),

        child: Center(
          child: Text(
            '$buttonText',
            style: TextStyle(
              color: Colors.blue[400],
              fontFamily: 'Proxima',
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
