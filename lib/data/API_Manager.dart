import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/resources/app_constants.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManager{
  late Dio dio;
  ApiManager(){
    dio = Dio();
  }
  Future<Response> getData(String endPoint,Map<String, dynamic>? queryParameter){
    return dio.get(AppConstants.baseUrl+endPoint ,queryParameters: queryParameter);
  }

  Future<Response> postData(String endPoint,
      {Map<String, dynamic>? queryParameter, Map<String, dynamic>? body}){
    return dio.post(AppConstants.baseUrl+endPoint ,queryParameters: queryParameter,
    data: body  );
  }
}