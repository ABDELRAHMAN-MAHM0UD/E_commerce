
import 'package:e_commerce_app/Feature/Register/cubit/RegisterScreen_View_Model.dart';
import 'package:e_commerce_app/data/API_Manager.dart';
import 'package:e_commerce_app/data/data_source/remote_data_source/auth_reomte_data_source_Impl.dart';
import 'package:e_commerce_app/data/repository/auth_repository_impl.dart';
import 'package:e_commerce_app/domain/use_cases/register_use_case.dart';

injectRegisterUseCase(){
  return RegisterViewModel(registerUseCase: useCase());
}
useCase(){
  return RegisterUseCase(authRepository: AuthRepo());
}
AuthRepo(){
  return AuthRepositoryImpl(authRemoteDataSource:remoteData() );
}
remoteData(){
  return AuthRemoteDataSourceImpl(apiManager:apiManager() );
}
apiManager(){
  return ApiManager();
}