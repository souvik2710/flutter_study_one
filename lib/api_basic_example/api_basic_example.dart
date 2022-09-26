import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'model_basic_example.dart';
import 'model_user_basic_example_two.dart';

Future<List<PhotosModel>> fetchAllPhotos() async {
  // final nn = ref!.read(flavorProvider)!.baseUrl;
  debugPrint("check2222");
  final thisUrl = "https://jsonplaceholder.typicode.com/photos";
  final response =
  await http.get(Uri.parse(thisUrl),);
  debugPrint('%%%%%%%%%%%%%%$response%%%%%');
  final responseString = jsonDecode(response.body);
  debugPrint('########$responseString########');
  debugPrint('${response.statusCode}');
  if (response.statusCode == 200) {
    debugPrint('%%%%%%%%%%${response.statusCode}%%%%%%%%%%');
    List<PhotosModel> listPhotoModel = List<PhotosModel>.from(responseString.map((model)=>PhotosModel.fromJson(model)));
    return listPhotoModel;
  } else {
    throw Exception('failed to load photos ');
  }
}
Future<UserExampleModel> fetchOneUser() async {
  // final nn = ref!.read(flavorProvider)!.baseUrl;
  debugPrint("check2222");
  final thisUrl = "https://jsonplaceholder.typicode.com/users/1";
  final response =
  await http.get(Uri.parse(thisUrl),);
  debugPrint('%%%%%%%%%%%%%%$response%%%%%');
  final responseString = jsonDecode(response.body);
  debugPrint('########$responseString########');
  debugPrint('${response.statusCode}');
  if (response.statusCode == 200) {
    debugPrint('%%%%%%%%%%${response.statusCode}%%%%%%%%%%');
    UserExampleModel userModel = UserExampleModel.fromJson(responseString);
    return userModel;
  } else {
    throw Exception('failed to load User details ');
  }
}