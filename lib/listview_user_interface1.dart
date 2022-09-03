import 'package:flutter/material.dart';
class UserInterface extends StatefulWidget {

  @override
  State<UserInterface> createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {
  List<String> img=["https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
  "https://st3.depositphotos.com/3047333/12924/i/600/depositphotos_129246006-stock-photo-kitten-sitting-in-flowers.jpg",
  "https://thumbs.dreamstime.com/b/flowers-4929984.jpg",
  "https://cdn.pixabay.com/photo/2017/05/08/13/15/bird-2295431__340.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        body:
        SafeArea(
          child: Column(
            children: [
              // ListView.builder(
              //
              //     shrinkWrap: true,
              //     itemCount:img.length,
              //
              //       itemBuilder: (context,index)
              //       {
              //         return Column(
              //           children: [
              //             Image.network('${img[index]}',height: 150,width: 200,),
              //             SizedBox(height: 10,)
              //           ],
              //         );
              //       }
              // )
              Container(
                height: 200,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount:img.length,
                    itemBuilder: (context,index)
                    {
                      return Stack(
                        children: [
                          Row(
                            children: [
                              ColorFiltered(
                                  colorFilter: ColorFilter.mode(Colors.red , BlendMode.color),
                                  child: Image.network('${img[index]}',height: 200,width: 250,)
                              ),
                              SizedBox(width: 10,)
                            ],
                          ),
                          Positioned(
                            bottom:26.0,
                            child: CircleAvatar (
                              radius: 18.0,
                              backgroundColor: Colors.black,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            bottom:26.0,
                            child: CircleAvatar (
                              radius: 18.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                          Positioned(
                            left:40.0,
                            bottom:26.0,
                            child: CircleAvatar (
                              radius: 18.0,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          // Positioned(
                          //   top:20.0,
                          //   child:Text("Demo Picture",style:TextStyle(
                          //     color:Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //     fontSize: 20.0,
                          //   )
                          //   )
                          // )
                          Align(
                          alignment:Alignment.center ,
                            child: Text("Demo Picture",style:TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            )
                            ),
                          )
                        ],
                      );
                    }
                ),
              ),
              Container(
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount:img.length,
                      separatorBuilder: (context,index){
                      return SizedBox(width:10.0);
                      },
                      itemBuilder: (context,index)
                      {
                        return Image.network('${img[index]}',height: 200,width: 250,);
                      }
                ),
              )

            ],

          ),


        )
    );
  }
}
