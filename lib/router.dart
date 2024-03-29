import 'package:auth_appication/presentation/app/home_page.dart';
import 'package:auth_appication/presentation/authentication/authentication_page.dart';
import 'package:auth_appication/presentation/authentication/login_page.dart';
import 'package:auth_appication/presentation/authentication/otp_page.dart';
import 'package:auth_appication/presentation/authentication/signup_page.dart';
import 'package:auth_appication/presentation/initialization_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: InitializationPage,
    ),
    AutoRoute(
      page: AuthenticationPage,
      children: [
        AutoRoute(
          page: LoginPage,
          initial: true,
        ),
        AutoRoute(page: SignupPage),
        AutoRoute(page: OtpPage),
      ],
    ),
    AutoRoute(
      page: HomePage,
    )
  ],
)
class $AppRouter {}
// class $AppRouter {}
