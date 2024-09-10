import 'package:e_commerce_app/Feature/Login/LoginScreen.dart';
import 'package:e_commerce_app/Feature/Register/Register_Screen.dart';
import 'package:e_commerce_app/Feature/splash/splash_screen.dart';
import 'package:e_commerce_app/core/routes_manager/routes.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.RegisterScreen:
        return MaterialPageRoute(builder: (context) => RegisterScreen());
      case Routes.SplashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case Routes.LoginScreen:
        return MaterialPageRoute(builder: (context) => Loginscreen());
      default:
        return undefinedRoute();
    }
  }

  static undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("no route found"),
        ),
        body: Center(
          child: Text("no route found"),
        ),
      ),
    );
  }
}
