import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/Register_Response.dart';
import '../failuers.dart';
import '../repository/Auth_Repository.dart';

@injectable
class RegisterUseCase {
  AuthRepository authRepository;
  RegisterUseCase({required this.authRepository});

  Future<Either<Failuers, RegisterResponse>> invoke(String name, String Email,
      String password, String phoneNum) {
    return authRepository.register(name, Email, password, phoneNum);
  }
}
