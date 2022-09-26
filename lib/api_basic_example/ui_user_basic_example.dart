import 'package:flutter/material.dart';
import 'api_basic_example.dart';
import 'model_user_basic_example_two.dart';
import 'model_user_basic_example_two.dart';

class ApiUserBasicDesign  extends StatefulWidget {
  @override
  State<ApiUserBasicDesign> createState() => _ApiUserBasicDesignState();
}

class _ApiUserBasicDesignState extends State<ApiUserBasicDesign> {
  late Future<UserExampleModel> userModel;

  @override
  void initState() {
    super.initState();
    userModel = fetchOneUser();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:FutureBuilder<UserExampleModel>(
                future: userModel,
                builder: (context,snapshot){
                  if(snapshot.hasData) {
                    return Container(
                      child:
                      Column(
                        children: [
                          Wrap(

                            children: [
                              Text("${snapshot.data!.id}"),
                              Text("${snapshot.data!.name}"),
                              Text("${snapshot.data!.username}"),
                              Text("${snapshot.data!.email}"),
                              Text("${snapshot.data!.phone}"),
                              Text("${snapshot.data!.address!.city}"),
                            ],
                          )
                        ],
                      ),

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
            ))
    );
  }
}