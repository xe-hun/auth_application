// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import 'presentation/app/home_page.dart' as _i3;
import 'presentation/authentication/authentication_page.dart' as _i2;
import 'presentation/authentication/login_page.dart' as _i4;
import 'presentation/authentication/otp_page.dart' as _i6;
import 'presentation/authentication/signup_page.dart' as _i5;
import 'presentation/initialization_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    InitializationRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.InitializationPage(),
      );
    },
    AuthenticationRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthenticationPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SignupPage(),
      );
    },
    OtpRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.OtpPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          InitializationRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          AuthenticationRoute.name,
          path: '/authentication-page',
          children: [
            _i7.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: AuthenticationRoute.name,
            ),
            _i7.RouteConfig(
              SignupRoute.name,
              path: 'signup-page',
              parent: AuthenticationRoute.name,
            ),
            _i7.RouteConfig(
              OtpRoute.name,
              path: 'otp-page',
              parent: AuthenticationRoute.name,
            ),
          ],
        ),
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
      ];
}

/// generated route for
/// [_i1.InitializationPage]
class InitializationRoute extends _i7.PageRouteInfo<void> {
  const InitializationRoute()
      : super(
          InitializationRoute.name,
          path: '/',
        );

  static const String name = 'InitializationRoute';
}

/// generated route for
/// [_i2.AuthenticationPage]
class AuthenticationRoute extends _i7.PageRouteInfo<void> {
  const AuthenticationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AuthenticationRoute.name,
          path: '/authentication-page',
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.SignupPage]
class SignupRoute extends _i7.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: 'signup-page',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i6.OtpPage]
class OtpRoute extends _i7.PageRouteInfo<void> {
  const OtpRoute()
      : super(
          OtpRoute.name,
          path: 'otp-page',
        );

  static const String name = 'OtpRoute';
}
