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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import 'presentation/app/home_page.dart' as _i3;
import 'presentation/authentication/authentication_page.dart' as _i2;
import 'presentation/authentication/login_page.dart' as _i4;
import 'presentation/authentication/signup_page.dart' as _i5;
import 'presentation/initialization_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    InitializationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.InitializationPage(),
      );
    },
    AuthenticationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthenticationPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SignupPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          InitializationRoute.name,
          path: '/initialization-page',
        ),
        _i6.RouteConfig(
          AuthenticationRoute.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: AuthenticationRoute.name,
            ),
            _i6.RouteConfig(
              SignupRoute.name,
              path: 'signup-page',
              parent: AuthenticationRoute.name,
            ),
          ],
        ),
        _i6.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
      ];
}

/// generated route for
/// [_i1.InitializationPage]
class InitializationRoute extends _i6.PageRouteInfo<void> {
  const InitializationRoute()
      : super(
          InitializationRoute.name,
          path: '/initialization-page',
        );

  static const String name = 'InitializationRoute';
}

/// generated route for
/// [_i2.AuthenticationPage]
class AuthenticationRoute extends _i6.PageRouteInfo<void> {
  const AuthenticationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthenticationRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.SignupPage]
class SignupRoute extends _i6.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: 'signup-page',
        );

  static const String name = 'SignupRoute';
}
