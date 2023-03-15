import 'package:auth_appication/application/auth_bloc.dart';
import 'package:auth_appication/presentation/sizes.dart';
import 'package:auth_appication/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: _buildAppbar(onLogout: () {
            BlocProvider.of<AuthBloc>(context)
                .add(AuthEvent.logout(onLogout: () {
              context.router.replace(const AuthenticationRoute());
            }));
          }),
          body: Center(
            child: Text(
              'You are Logged In',
              style: TextStyle(fontSize: displaySize3),
            ),
          )),
    );
  }

  AppBar _buildAppbar({required Function() onLogout}) {
    return AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
      IconButton(onPressed: onLogout, icon: const Icon(Icons.logout))
    ]);
  }
}
