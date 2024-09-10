import 'package:e_commerce_app/core/resources/app_Colors.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldWidget extends StatelessWidget {

  String label;
  String title;
  double top;
  String? Function(String?)?  validator;
  TextEditingController controller;

  TextFormFieldWidget({required this.label , required this.title,
   required this.top , required this.validator ,required this.controller});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              title,
              style: TextStyle(fontSize: 18,color: appColors.white)
          ),
          Container(
            margin: EdgeInsets.only(top: top),
            height: 64.h,
            width: 398.w,
            child: TextFormField(
              style: TextStyle(color: appColors.fontColor1),
              controller: controller,
              validator: validator,
                decoration: InputDecoration(hintText: label,
                    labelStyle: Theme.of(context).textTheme.titleMedium,
                    enabledBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),filled: true , fillColor: appColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
