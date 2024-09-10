import 'package:e_commerce_app/core/resources/app_Colors.dart';
import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData Theme = ThemeData(
    textTheme: TextTheme(
        titleLarge: TextStyle(
          color: appColors.primaryColor,fontWeight: FontWeight.w600
        ),
      titleMedium: TextStyle(
        color: appColors.fontColor1,fontSize: 18,fontWeight: FontWeight.w300
      ),
      headlineSmall: TextStyle(
        color: appColors.white,fontWeight: FontWeight.w600
      ),
      bodyLarge: TextStyle(fontWeight:FontWeight.w300,color: appColors.white ),
      labelLarge: TextStyle(fontSize: 18,color: appColors.white)
    ),
  );
}