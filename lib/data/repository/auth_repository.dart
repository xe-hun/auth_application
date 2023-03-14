import 'package:auth_appication/data/data_source/firebase_datasource.dart';
import 'package:auth_appication/data/data_source/send_email_otp.dart';
import 'package:auth_appication/data/dto/user_dto.dart';
import 'package:auth_appication/domain/failures/auth_failure.dart';
import 'package:auth_appication/domain/i_repository/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:auth_appication/domain/models/user_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(this.firebaseDatasource, this.sendEmailOtp);
  final FireBaseDatasource firebaseDatasource;
  final SendEmailOtp sendEmailOtp;

  @override
  Future<Either<AuthFailure, UserModel>> login(
      {required String email, required String password}) async {
    try {
      final result =
          await firebaseDatasource.login(email: email, password: password);
      return Right(UserDto.fromFirebaseUser(result).toUserModel());
    } on AuthFailure catch (e) {
      return Left(e);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> register(
      {required String name,
      required String password,
      required String email}) async {
    try {
      await firebaseDatasource.register(
        email: email,
        password: password,
        name: name,
      );

      // return Right(UserDto.fromFirebaseUser(result).toUserModel());
      return const Right(unit);
    } on AuthFailure catch (e) {
      return Left(e);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendOtp({required email}) async {
    try {
      await sendEmailOtp.sendOtp(email);
      return const Right(unit);
    } catch (e) {
      return const Left(AuthFailure.errorSendingOtp());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> verifyOtp({required String otp}) async {
    try {
      if (await sendEmailOtp.verifyOtp(otp) == true) {
        await firebaseDatasource.validateEmail();
        return const Right(unit);
      }
      return const Left(AuthFailure.wrongOtp());
    } catch (e) {
      return Left(AuthFailure.authGenericFailure(failedValue: e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logout() async {
    try {
      await firebaseDatasource.logout();
      return const Right(unit);
    } catch (e) {
      return Left(AuthFailure.authGenericFailure(failedValue: e));
    }
  }
}
