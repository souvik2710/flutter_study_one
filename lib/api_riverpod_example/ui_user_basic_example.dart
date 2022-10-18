import 'package:demo_project/api_riverpod_example/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'model_user_basic_example_two.dart';
import 'model_user_basic_example_two.dart';

class UserInfo  extends HookConsumerWidget {


  @override
  Widget build(BuildContext context,WidgetRef ref) {
    useEffect(() {
      SchedulerBinding.instance.addPostFrameCallback((_) async {
        await ref.read(viewModelExampleProvider).vmFetchOneUser();
      });
      return () {
      };
    }, []);
    final UserExampleModel? myUserModel = (ref.watch(viewModelExampleProvider).isloading?null:ref.watch(viewModelExampleProvider).userModel);

    return Scaffold(
        body:ref.watch(viewModelExampleProvider).isloading ? Center(
            child:CircularProgressIndicator()
        ): SafeArea(
            child:  Container(
                      child:
                      Column(
                        children: [
                          Wrap(

                            children: [
                              Text("${myUserModel!.id}"),
                              Text("${myUserModel.name}"),
                              Text("${myUserModel.username}"),
                              Text("${myUserModel.email}"),
                              Text("${myUserModel.phone}"),
                              Text("${myUserModel.address!.city}"),
                            ],
                          )
                        ],
                      ),
            )
            ));

  }
}