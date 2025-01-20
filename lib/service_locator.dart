import 'package:beginner/core/network/dio_client.dart';
import 'package:beginner/core/usecase/usecase.dart';
import 'package:beginner/data/auth/repositories/auth_repository_impl.dart';
import 'package:beginner/data/auth/source/auth_api_services.dart';
import 'package:beginner/domain/auth/respositories/auth_repository.dart';
import 'package:beginner/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setUpServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //services
  sl.registerSingleton<AuthApiServices>(AuthApiServicesImp());

  //repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  //usecases
  sl.registerSingleton<UseCase>(SignUpUseCase());
}
