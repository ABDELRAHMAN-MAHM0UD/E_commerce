import 'package:dartz/dartz.dart';

import '../../../domain/entities/Register_Response.dart';
import '../../../domain/failuers.dart';

abstract class AuthRemoteDataSource{

  Future<Either<Failuers, RegisterResponse>> invoke(String name, String Email,
      String password, String phoneNum) ;
}