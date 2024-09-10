import 'package:e_commerce_app/Theme.dart';
import 'package:e_commerce_app/core/routes_manager/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes_manager/routes.dart';
import 'dependancy injection/di.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoutes,
          initialRoute: Routes.SplashScreen,
          theme: MyTheme.Theme,
        );
      },
    );
  }
}
