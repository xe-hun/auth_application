import 'package:auth_appication/application/auth_bloc.dart';
import 'package:auth_appication/domain/input_validators/input_validator.dart';
import 'package:auth_appication/presentation/shared/page_layout.dart';
import 'package:auth_appication/presentation/shared/shared_widgets.dart';
import 'package:auth_appication/presentation/shared/sizes.dart';
import 'package:auth_appication/presentation/shared/text_input_field.dart';

import 'package:auth_appication/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          notAuthenticated: (s) => PageLayout(
            errorMessage: s.errorMessage,
            isLoading: s.isLoading,
            appBar: buildAppBar(),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // _buildAppBar(),

                      buildPageLabel(label: "LOGIN"),

                      _buildLoginBody(
                          loginProperties: s.loginProperties,
                          onLogin: () {
                            BlocProvider.of<AuthBloc>(context)
                                .add(AuthEvent.login(
                              onNotVerified: () {
                                if (BlocProvider.of<AuthBloc>(context)
                                    .canSendOtp) {
                                  BlocProvider.of<AuthBloc>(context)
                                      .add(const AuthEvent.sendOtp());
                                }
                                context.router.push(const OtpRoute());
                              },
                              onSuccessful: () {
                                context.router.replace(const HomeRoute());
                              },
                            ));
                          }),
                      _buildRegisterDialog(onPressed: () {
                        context.router.replace(const SignupRoute());
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

  Widget _buildLoginBody(
      {required Function() onLogin, required LoginProperties loginProperties}) {
    return Form(
      child: Builder(builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInputField.input(
                validator: emailValidator,
                label: 'Email',
                tec: loginProperties.emailTEC),
            TextInputField.password(
                validator: passwordValidator,
                label: 'Password',
                tec: loginProperties.passwordTEC),
            buildCustombutton(
                label: "LOGIN",
                onPressed: () {
                  if (Form.of(context).validate()) {
                    onLogin();
                  }
                }),
            SizedBox(height: spaceSizeMedium)
          ],
        );
      }),
    );
  }
}
