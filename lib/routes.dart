import 'package:flutter/material.dart';

import 'navigation_four.dart';
import 'navigation_main.dart';
import 'navigation_one.dart';
import 'navigation_two.dart';
//navigation_three (page three) not included
class AppRoutes {
  static const navigationOne="navigationone";
  static const navigationTwo="navigationtwo";
  static const navigationFour="navigationfour";
  static const navigationMain="navigationmain";


}
class AppRouter{
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch(settings.name){
      case AppRoutes.navigationOne:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>PageOne(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.navigationTwo:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>PageTwo(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.navigationFour:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>PageFour(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.navigationMain:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>PageMain(),
          settings: settings,
          fullscreenDialog: true,
        );
    }
  }
}