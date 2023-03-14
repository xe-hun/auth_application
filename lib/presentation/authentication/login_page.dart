import 'package:auth_appication/presentation/shared_widgets.dart';
import 'package:auth_appication/presentation/sizes.dart';
import 'package:auth_appication/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // _buildAppBar(),

                buildPageLabel(label: "LOGIN"),

                _buildLoginBody(onLogin: () {}),
                _buildRegisterDialog(onPressed: () {
                  context.router.replace(const SignupRoute());
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  RichText _buildRegisterDialog({required Function() onPressed}) {
    return RichText(
        text: TextSpan(
            text: "Don't have an account?",
            style: TextStyle(color: Colors.grey.shade700),
            children: [
          WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: TextButton(
                style: TextButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: onPressed,
                child: const Text('register here'),
              ))
        ]));
  }

  Widget _buildLoginBody({required Function() onLogin}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTextInputField(label: 'Email'),
        buildTextInputField(label: 'Password'),
        buildCustombutton(label: "LOGIN", onPressed: onLogin),
        SizedBox(height: spaceSizeMedium)
      ],
    );
  }
}
