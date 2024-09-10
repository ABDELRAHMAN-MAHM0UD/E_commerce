import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/data/data_source/remote_data_source/auth_reomte_dataSource.dart';
import 'package:e_commerce_app/domain/entities/Register_Response.dart';
import 'package:e_commerce_app/domain/failuers.dart';
import 'package:e_commerce_app/domain/repository/Auth_Repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository{
  AuthRemoteDataSource authRemoteDataSource;
  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<Either<Failuers, RegisterResponse>> register(String name, String Email,
      String password, String phoneNum)async {
   var either= await authRemoteDataSource.invoke(name, Email, password, phoneNum);
   return either.fold((l) => Left(l), (r) => Right(r));
  }

}