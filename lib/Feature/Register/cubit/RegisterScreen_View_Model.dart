import 'package:e_commerce_app/domain/use_cases/register_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'RegisterScreen_States.dart';

@injectable
class RegisterViewModel extends Cubit<RegisterStates>{
  RegisterUseCase registerUseCase;

  TextEditingController EmailController =TextEditingController(text: "name@mail.com");
  TextEditingController PhoneController =TextEditingController(text: "01222222222");
  TextEditingController NameController =TextEditingController(text: "my name");
  TextEditingController PasswordController =TextEditingController(text: "admin1");

  RegisterViewModel({required this.registerUseCase}):super(RegisterInitState());

  void register()async{
    emit(RegisterLoadingState());
      var either= await registerUseCase.invoke(NameController.text, EmailController.text,
          PasswordController.text, PhoneController.text);
      either.fold((l) => emit(RegisterErrorState(failuers: l)),
           (r) => emit(RegisterSuccessState(registerResponse: r)),);
  }
}