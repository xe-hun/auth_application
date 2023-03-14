part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.notAuthenticated({
    required RegisterProperties registerProperties,
    required LoginProperties loginProperties,
    String? errorMessage,
    bool? isLoading,
  }) = _NotAuthenticated;
}

class RegisterProperties {
  RegisterProperties();

  final TextEditingController _nameTEC = TextEditingController();
  final TextEditingController _emailTEC = TextEditingController();
  final TextEditingController _passwordTEC = TextEditingController();

  String get name => _nameTEC.text;
  String get email => _emailTEC.text;
  String get password => _passwordTEC.text;

  TextEditingController get nameTEC => _nameTEC;
  TextEditingController get emailTEC => _emailTEC;
  TextEditingController get passwordTEC => _passwordTEC;
}

class LoginProperties {
  LoginProperties();
  final TextEditingController _passwordTEC = TextEditingController();
  final TextEditingController _emailTEC = TextEditingController();

  String get name => _passwordTEC.text;
  String get email => _emailTEC.text;

  TextEditingController get passwordTEC => _passwordTEC;
  TextEditingController get emailTEC => _emailTEC;
}
