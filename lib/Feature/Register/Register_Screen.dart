import 'package:e_commerce_app/Feature/Register/cubit/RegisterScreen_States.dart';
import 'package:e_commerce_app/Feature/Register/cubit/RegisterScreen_View_Model.dart';
import 'package:e_commerce_app/core/resources/app_Colors.dart';
import 'package:e_commerce_app/core/resources/assets_manager.dart';
import 'package:e_commerce_app/dependancy%20injection/di.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/resources/validators.dart';
import '../../core/widget/Text_Field.dart';
import '../../core/widget/login_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  
  RegisterViewModel viewModel = injectRegisterUseCase();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }
  @override
  Widget build(BuildContext context) {
    double top = 20;
    return BlocListener<RegisterViewModel,RegisterStates>(
      bloc: viewModel,
        listener: (context, state) {
        if(state is RegisterLoadingState){
         Center(child: CircularProgressIndicator(),);
        }else if(state is RegisterErrorState){
        print("error state <<");
        }else if(state is RegisterSuccessState){
           print(">>> Registered Successfuly <<<");

        }
        },child: Scaffold(
      backgroundColor: appColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20 ,top: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AssetsManager.routeLogoLoginScreen),
              SizedBox(height: 50),


              TextFormFieldWidget(
                controller: viewModel.NameController,
                validator: validators.NotEmptyValidate,
                top: top,
                title: "Full Name",
                label: "Enter your full name",
              ),
              TextFormFieldWidget(
                controller:viewModel.PhoneController ,
                validator: validators.NotEmptyValidate,
                top: top,
                title: "Mobile Number",
                label: "Enter your phone number",
              ),
              TextFormFieldWidget(
                controller:viewModel.EmailController ,
                validator: validators.validateEmail,
                top: top,
                title: "E_mail address",
                label: "Enter your Email",
              ),
              TextFormFieldWidget(
                controller: viewModel.PasswordController,
                validator:validators.validatePassword,
                top: top,
                title: "Password",
                label: "Enter your password",
              ),
              SizedBox(height: 150),
          
              LoginButton(onPressed: (){
                viewModel.register();
              },text: "Sign up",)
            ],
          ),
        ),
      ),

    )
      ,
    );

  }
}
