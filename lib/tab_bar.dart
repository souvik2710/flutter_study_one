import 'package:flutter/material.dart';
class TabBarDesign  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.deepPurple[900],
          appBar:AppBar(title:Text("Tab Bar View Design"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_circle),),
                Tab(icon: Icon(Icons.chat),),
              ],
            ),),
          body:
          TabBarView(
            children: [
              TapBarOne(),TapBarTwo()
            ],
          )
        // Center(child:Column(
        //   children: [
        //     Text(" Home Bottom Nav Bar",style: TextStyle(
        //       color:Colors.orange,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 18.0,
        //     ),)
        //   ],
        // ))
      ),
    );
  }
}
class TapBarOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        body:
        Center(child: Text("tap Bar Page One", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.lightGreen[600],
        ),))
    );
  }
}
class TapBarTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        body:
        Center(child: Text("tap Bar Page Two", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.amber[900],
        ),))
    );
  }
}