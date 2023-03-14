import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure<T> with _$AuthFailure<T> {
  const factory AuthFailure.networkFailure() = _NetworkFailure;
  const factory AuthFailure.weekPassword() = _WeekPassword;
  const factory AuthFailure.accountAlreadyExist(T email) =
      _AccountAlreadyExist<T>;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.invalidEmail() = _InvalidEmail;
  const factory AuthFailure.wrongPassword() = _WrongPassword;
  const factory AuthFailure.authGenericFailure({required T failedValue}) =
      _AuthGenericFailure;
}
