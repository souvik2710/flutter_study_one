import 'package:flutter/material.dart';
import 'api_basic_example.dart';
import 'model_basic_example.dart';
class ApiUIBasicDesign  extends StatefulWidget {
  @override
  State<ApiUIBasicDesign> createState() => _ApiUIBasicDesignState();
}

class _ApiUIBasicDesignState extends State<ApiUIBasicDesign> {
  late Future<List<PhotosModel>> listPhotoModel;

  @override
  void initState()
  {
    super.initState();
    listPhotoModel=fetchAllPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        // child:FutureBuilder<List<PhotosModel>>(
        //   future: listPhotoModel,
        //   builder: (context,snapshot){
        //     return Container(
        //       child:Image.network("${snapshot.data![0].thumbnailUrl}"),
        //       width: 100.0,
        //       height: 100.0,
        //     );
        //   },
        //
        // )
        child:FutureBuilder<List<PhotosModel>>(
      future: listPhotoModel,
        builder: (context,snapshot) {
          if (snapshot.hasData) {
            return Container(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container(
                      child:
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("${snapshot.data![index].id}",
                            style: TextStyle(fontSize: 16.0,
                                fontWeight: FontWeight.bold),),
                          Image.network("${snapshot.data![index].thumbnailUrl}",
                            width: 100.0, height: 100.0,),
                        ],
                      )
                  );
                }
                )
            );
          }
          else if(snapshot.hasError)
          {
            return Center(child: Text("error"));
          }
          else{
            return Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }

        }

      )

      ),
    );
  }
}
