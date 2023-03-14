part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.register({required Function() onSuccessful}) =
      _Register;
  const factory AuthEvent.login() = _Login;
}
