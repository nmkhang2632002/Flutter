import 'package:beginner/data/auth/models/signup_req_params.dart';
import 'package:beginner/data/auth/source/auth_api_services.dart';
import 'package:beginner/domain/auth/respositories/auth_repository.dart';
import 'package:beginner/service_locator.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signUp(SignupReqParams params) async {
    return await sl<AuthApiServices>().signUp(params);
  }
}
