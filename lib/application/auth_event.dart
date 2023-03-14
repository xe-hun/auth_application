part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.sendOtp() = _SendOtp;
  const factory AuthEvent.verifyOtp(
      {required String otp, required Function() onVerifySuccess}) = _VerifyOtp;
  const factory AuthEvent.register({required Function() onSuccessful}) =
      _Register;
  const factory AuthEvent.login() = _Login;
  const factory AuthEvent.logout({required Function() onLogout}) = _Logout;
}
