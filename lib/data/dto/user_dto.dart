import 'package:auth_appication/domain/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDto {
  UserDto._(
      {required this.name, required this.email, required this.emailVerified});

  final String name;
  final String email;
  final bool emailVerified;

  factory UserDto.fromFirebaseUser(User user) {
    return UserDto._(
        name: user.displayName ?? '',
        email: user.email!,
        emailVerified: user.emailVerified);
  }

  UserModel toUserModel() {
    return UserModel(
      name: name,
      email: email,
      emailVerified: emailVerified,
    );
  }
}
