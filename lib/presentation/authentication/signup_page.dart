import 'package:auth_appication/application/auth_bloc.dart';
import 'package:auth_appication/domain/input_validators/input_validator.dart';
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
        return state.maybeMap(
          orElse: () => Container(),
          notAuthenticated: (s) => PageLayout(
            errorMessage: s.errorMessage,
            isLoading: s.isLoading,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildPageLabel(label: "REGISTER"),
                      _buildSignupBody(
                          registerProperties: s.registerProperties,
                          onSignup: () {
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

  Widget _buildSignupBody(
      {required Function() onSignup,
      required RegisterProperties registerProperties}) {
    return Form(
      child: Builder(builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextInputField(
                validator: displayNameValidator,
                label: 'Name',
                tec: registerProperties.nameTEC),
            buildTextInputField(
                validator: emailValidator,
                label: 'Email',
                tec: registerProperties.emailTEC),
            buildTextInputField(
                validator: passwordValidator,
                obscureText: true,
                label: 'Password',
                tec: registerProperties.passwordTEC),
            buildCustombutton(
                label: 'SIGN UP',
                onPressed: () {
                  if (Form.of(context).validate()) {
                    onSignup();
                  }
                }),
            SizedBox(height: spaceSizeMedium)
          ],
        );
      }),
    );
  }
}
