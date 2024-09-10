import 'package:e_commerce_app/core/resources/app_Colors.dart';
import 'package:e_commerce_app/core/resources/assets_manager.dart';
import 'package:e_commerce_app/core/resources/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/routes_manager/routes.dart';
import '../../core/widget/Text_Field.dart';
import '../../core/widget/login_button.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<Loginscreen> {

  double top = 20;
TextEditingController EmailController =TextEditingController();
TextEditingController PasswordController =TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 35, top: 91),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(AssetsManager.routeLogoLoginScreen)),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 75, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back To Route",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    "Please sign in with your mail",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            TextFormFieldWidget(
              controller:EmailController ,
              validator: validators.validateEmail,
              top: top,
              title: "E_mail address",
              label: "Enter your Email",
            ),
            SizedBox(
              height: 32,
            ),
            TextFormFieldWidget(
              controller: PasswordController,
              validator:validators.validatePassword ,
              top: top,
              title: "Password",
              label: "Enter your password",
            ),
            TextButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ))),
            SizedBox(
              height: 32,
            ),
            LoginButton(
              onPressed: () {},
              text: "Login",
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.RegisterScreen);
                  },
                  child: Text(
                    "Don’t have an account? Create Account",
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
