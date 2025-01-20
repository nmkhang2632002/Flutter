import 'package:beginner/core/usecase/usecase.dart';
import 'package:beginner/data/auth/models/signup_req_params.dart';
import 'package:beginner/domain/auth/respositories/auth_repository.dart';
import 'package:beginner/service_locator.dart';
import 'package:dartz/dartz.dart';

class SignUpUseCase extends UseCase<Either, SignupReqParams> {
  @override
  Future<Either> call({SignupReqParams? params}) async {
    return await sl<AuthRepository>().signUp(params!);
  }
}
