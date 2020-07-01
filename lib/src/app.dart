import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms_uidesign/src/routes.dart';
import 'package:lms_uidesign/src/screens/allcourses.dart';
import 'package:lms_uidesign/src/screens/course.dart';
import 'package:lms_uidesign/src/screens/landing.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp();
  }
}

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: Landing(),
        onGenerateRoute: Routes.cupertinoRoutes,
      );
    } else {
      return MaterialApp(
        home: Landing(),
        onGenerateRoute: Routes.materialRoutes,
      );
    }
  }
}
