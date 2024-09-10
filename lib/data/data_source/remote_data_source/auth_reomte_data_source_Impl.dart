import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_app/Feature/Register/cubit/RegisterScreen_States.dart';
import 'package:e_commerce_app/core/resources/app_constants.dart';
import 'package:e_commerce_app/data/API_Manager.dart';
import 'package:e_commerce_app/data/data_source/remote_data_source/auth_reomte_dataSource.dart';
import 'package:e_commerce_app/data/model/Register_Response_DTO.dart';
import 'package:e_commerce_app/domain/entities/Register_Response.dart';
import 'package:e_commerce_app/domain/failuers.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiManager apiManager;

  AuthRemoteDataSourceImpl({required this.apiManager});

  @override
  Future<Either<Failuers, RegisterResponse>> invoke(
      String name, String email, String password, String phoneNum) async {
    try {
      // Making the postData call inside the try-catch block
      var response = await apiManager.postData(AppConstants.registerApi, body: {
        "name": name,
        "email": email,
        "password": password,
        "phone": phoneNum,
      });

      // Check if the response is successful
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        var registerResponse = RegisterResponseDto.fromJson(response.data);
        return Right(registerResponse);
      } else {
        // In case of an error, return the failure with the error message
        return Left(ServerError(errorMsg: response.data['message'] ?? 'Unknown error'));
      }
    } catch (e) {
      // Catch Dio errors or other exceptions
      if (e is RegisterErrorState) {
        return Left(ServerError(errorMsg: "somthing went wrong"));
      } else {
        return Left(ServerError(errorMsg: "Something went wrong"));
      }
    }
  }
}
