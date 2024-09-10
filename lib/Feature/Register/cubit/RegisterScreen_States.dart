import 'package:e_commerce_app/domain/entities/Register_Response.dart';
import 'package:e_commerce_app/domain/failuers.dart';

abstract class RegisterStates {}

class RegisterInitState extends RegisterStates{}
class RegisterLoadingState extends RegisterStates{}
class RegisterErrorState extends RegisterStates{
  Failuers failuers;
  RegisterErrorState({required this.failuers});
}
class RegisterSuccessState extends RegisterStates{
  RegisterResponse registerResponse;
  RegisterSuccessState({required this.registerResponse});
}
