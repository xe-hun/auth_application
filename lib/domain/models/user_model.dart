class UserModel {
  UserModel(
      {required this.name, required this.emailVerified, required this.email});

  final String name;
  final String email;
  final bool emailVerified;
}
