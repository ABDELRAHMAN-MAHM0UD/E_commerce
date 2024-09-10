import 'package:e_commerce_app/core/widget/Text_Field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  String text;
  Function onPressed;
  LoginButton({required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        height: 64.h,
        width: 398.w,
        child: ElevatedButton(
            style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))))),
            onPressed: () {
              onPressed();
            },
            child: Text(text,style: Theme.of(context).textTheme.titleLarge)),
      ),
    );
  }
}
