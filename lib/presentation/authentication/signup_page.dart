import 'package:auth_appication/application/auth_bloc.dart';
import 'package:auth_appication/presentation/page_layout.dart';
import 'package:auth_appication/presentation/shared_widgets.dart';
import 'package:auth_appication/presentation/sizes.dart';
import 'package:auth_appication/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return PageLayout(
          appBar: buildAppBar(),
          body: state.maybeMap(
            orElse: () => Container(),
            notAuthenticated: (value) => SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildPageLabel(label: "REGISTER"),
                      _buildSignupBody(onSignup: () {
                        BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.register(onSuccessful: () {
                            context.router.push(const OtpRoute());
                          }),
                        );
                      }),
                      _buildLoginDialog(onPressed: () {
                        context.router.replace(const LoginRoute());
                      })
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  RichText _buildLoginDialog({required Function() onPressed}) {
    return RichText(
        text: TextSpan(
            text: "Already have an account?",
            style: TextStyle(color: Colors.grey.shade700),
            children: [
          WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: TextButton(
                style: TextButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: onPressed,
                child: const Text('Login here'),
              ))
        ]));
  }

  Widget _buildSignupBody({required Function() onSignup}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTextInputField(label: 'Name'),
        buildTextInputField(label: 'Email'),
        buildTextInputField(label: 'Password'),
        buildCustombutton(label: 'SIGN UP', onPressed: onSignup),
        SizedBox(height: spaceSizeMedium)
      ],
    );
  }
}
