import 'package:auth_appication/presentation/shared_widgets.dart';
import 'package:auth_appication/presentation/sizes.dart';
import 'package:auth_appication/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildPageLabel(label: "REGISTER"),
                _buildSignupBody(onSignup: () {
                  context.router.push(const OtpRoute());
                }),
                _buildLoginDialog(onPressed: () {
                  context.router.replace(const LoginRoute());
                })
              ],
            ),
          ),
        ),
      ),
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
