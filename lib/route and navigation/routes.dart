import 'package:flutter/material.dart';

//import '../bottom_navigation_bar.dart';
import '../expansion_view_demo.dart';
import '../side_nav_bar.dart';
import '../ui2.dart';
import '../ui3.dart';
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
  static const sideDrawerHome="sideDrawerHomePage";
  static const sideDrawerUser="sideDrawerUserPage";
  static const sideDrawerSearch="sideDrawerSearchPage";
  static const userDesign1="userDesignpage";
  static const cartDesign="cartDesignpage";
  static const expensionListView="expensionListViewPage";



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
      case AppRoutes.sideDrawerHome:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>SideDrawerHome(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.sideDrawerUser:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>SideDrawerUser(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.sideDrawerSearch:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>SideDrawerSearch(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.userDesign1:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>BootomSheetDesign(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.cartDesign:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>CartPage(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.expensionListView:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>ExpansionView(),
          settings: settings,
          fullscreenDialog: true,
        );
    }
  }
}