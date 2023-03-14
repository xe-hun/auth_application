import 'package:auth_appication/application/auth_bloc.dart';
import 'package:auth_appication/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitializationPage extends StatelessWidget {
  const InitializationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.mapOrNull(
              authenticated: (value) => value,
            ) !=
            null) {
          context.router.replace(const HomeRoute());
        } else {
          context.router.replace(const AuthenticationRoute());
        }
      },
      builder: (context, state) {
        return const Scaffold(
          body: SizedBox(),
        );
      },
    );
  }
}
