import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms_uidesign/src/screens/landing.dart';
import 'package:lms_uidesign/src/screens/login.dart';

abstract class Routes {
  static MaterialPageRoute materialRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/landing":
        return MaterialPageRoute(builder: (context) => Landing());

      case "/login":
        return MaterialPageRoute(builder: (context) => Login());
      default:
        return MaterialPageRoute(builder: (context) => Login());
    }
  }

  static CupertinoPageRoute cupertinoRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return CupertinoPageRoute(builder: (context) => Landing());
      case "/login":
        return CupertinoPageRoute(builder: (context) => Login());
      default:
        return CupertinoPageRoute(builder: (context) => Login());
    }
  }
}
