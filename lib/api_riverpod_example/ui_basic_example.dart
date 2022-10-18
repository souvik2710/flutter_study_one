import 'package:demo_project/api_riverpod_example/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'model_basic_example.dart';


class ApiUIBasicDesign  extends HookConsumerWidget {
  late Future<List<PhotosModel>> listPhotoModel;



  @override
  Widget build(BuildContext context,WidgetRef ref) {
    useEffect(() {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        ref.read(viewModelExampleProvider).vmFetchAllPhotos();
      });
      return () {
      };
    }, []);
    final List<PhotosModel> myPhotoModel = ref.watch(viewModelExampleProvider).isloading?[]:ref.watch(viewModelExampleProvider).listPhotoModel;
    return Scaffold(
      body:ref.watch(viewModelExampleProvider).isloading ? Center(
        child:CircularProgressIndicator()
      ): SafeArea(
        child:  Container(
                child: ListView.builder(
                itemCount: myPhotoModel.length,
                itemBuilder: (context, index) {
                  return Container(
                      child:
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("${myPhotoModel[index].id}",
                            style: TextStyle(fontSize: 16.0,
                                fontWeight: FontWeight.bold),),
                          Image.network("${myPhotoModel[index].thumbnailUrl}",
                            width: 100.0, height: 100.0,),
                        ],
                      )
                  );
                }
                )
            ))
    );
          }
}

