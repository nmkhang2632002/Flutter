import 'package:beginner/core/constant/api_url.dart';
import 'package:beginner/core/network/dio_client.dart';
import 'package:beginner/data/auth/models/signup_req_params.dart';
import 'package:beginner/service_locator.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AuthApiServices {
  Future<Either> signUp(SignupReqParams params);
}

class AuthApiServicesImp extends AuthApiServices {
  @override
  Future<Either> signUp(SignupReqParams params) async {
    try {
      var response =
          await sl<DioClient>().post(ApiUrl.signUp, data: params.toMap());
      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
