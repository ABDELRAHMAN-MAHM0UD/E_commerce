import 'package:e_commerce_app/core/routes_manager/route_generator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/routes_manager/routes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoutes,
    initialRoute: Routes.SplashScreen,
    );

  }

}