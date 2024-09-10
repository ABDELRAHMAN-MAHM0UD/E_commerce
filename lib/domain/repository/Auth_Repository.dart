import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/domain/entities/Register_Response.dart';
import 'package:e_commerce_app/domain/failuers.dart';

abstract class AuthRepository{
  Future<Either<Failuers , RegisterResponse>> register(
      String name, String Email , String password,String phoneNum);
}