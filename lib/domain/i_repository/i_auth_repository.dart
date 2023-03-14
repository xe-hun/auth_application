import 'package:auth_appication/domain/failures/auth_failure.dart';
import 'package:auth_appication/domain/models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, UserModel>> login(
      {required String email, required String password});
  Future<Either<AuthFailure, Unit>> register(
      {required String email, required String password, required String name});
}
