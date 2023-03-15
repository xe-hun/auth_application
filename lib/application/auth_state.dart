part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.notAuthenticated({
    required RegisterProperties registerProperties,
    required LoginProperties loginProperties,
    String? errorMessage,
    String? snackbarMessage,
    bool? isLoading,
  }) = _NotAuthenticated;
}

class RegisterProperties {
  RegisterProperties();

  dispose() {
    _nameTEC.dispose();
    _emailTEC.dispose();
    _passwordTEC.dispose();
  }

  final TextEditingController _nameTEC = TextEditingController();
  final TextEditingController _emailTEC = TextEditingController();
  final TextEditingController _passwordTEC = TextEditingController();

  String get name => _nameTEC.text.trim();
  String get email => _emailTEC.text.trim();
  String get password => _passwordTEC.text.trim();

  TextEditingController get nameTEC => _nameTEC;
  TextEditingController get emailTEC => _emailTEC;
  TextEditingController get passwordTEC => _passwordTEC;
}

class LoginProperties {
  LoginProperties();

  dispose() {
    _emailTEC.dispose();
    _passwordTEC.dispose();
  }

  final TextEditingController _passwordTEC = TextEditingController();
  final TextEditingController _emailTEC = TextEditingController();

  String get password => _passwordTEC.text.trim();
  String get email => _emailTEC.text.trim();

  TextEditingController get passwordTEC => _passwordTEC;
  TextEditingController get emailTEC => _emailTEC;
}
