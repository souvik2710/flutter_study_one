import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'api_riverpod_basic_example.dart';
import 'model_basic_example.dart';
import 'model_user_basic_example_two.dart';


final viewModelExampleProvider=ChangeNotifierProvider<ViewModelExample>((ref) {
  return ViewModelExample(ref:ref);
});
class ViewModelExample extends ChangeNotifier{
  Ref ref;
  ApiProvider? repo;
  ViewModelExample({required this.ref}){
    repo = ref.read(apiProvider);
  }
  bool isRedTypeTwo=true;
  bool isloading = false;
  //start photo model
  List<PhotosModel> listPhotoModel=[];

  Future<void> vmFetchAllPhotos() async {
    try {
      isloading = true;
      notifyListeners();
      listPhotoModel = await repo!.fetchAllPhotos();
    }catch(e)
    {
      debugPrint("-----$e---------");
    }
    finally{
      isloading=false;
      notifyListeners();
    }
  }
  //end photo model
//start user model
  UserExampleModel? userModel;
  Future<void> vmFetchOneUser() async {
    try {
      isloading = true;
      notifyListeners();
      userModel = await repo!.fetchOneUser();
    }catch(e)
    {
      debugPrint("-----$e---------");
    }
    finally{
      isloading=false;
      notifyListeners();
    }
  }


  //color change for type two
  void colorChange() {
    isRedTypeTwo = !isRedTypeTwo;
    notifyListeners();
  }
}