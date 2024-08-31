import 'dart:async';

import 'package:e_commerce_app/core/resources/assets_manager.dart';
import 'package:e_commerce_app/core/routes_manager/routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*Future.delayed(Duration(seconds: 3),() =>
        Navigator.pushReplacementNamed(context, Routes.RegisterScreen),);*/
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routes.RegisterScreen);
    },);
    return Scaffold(

      body: Image.asset(
AssetsManager.splash,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
