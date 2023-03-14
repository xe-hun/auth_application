import 'dart:math';

import 'package:auth_appication/application/auth_bloc.dart';
import 'package:auth_appication/presentation/page_layout.dart';
import 'package:auth_appication/presentation/shared_widgets.dart';
import 'package:auth_appication/presentation/sizes.dart';
import 'package:auth_appication/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    // useEffect(() {
    //   BlocProvider.of<AuthBloc>(context).add(const AuthEvent.sendOtp());
    //   return null;
    // }, []);

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

                      buildPageLabel(label: "VALIDATE ACCOUNT"),
                      const Center(
                          child: Text(
                              'check your email for OTP or input 12345 as otp')),
                      SizedBox(height: spaceSizeMedium),

                      _buildOtpBody(onComplete: (otp) {
                        BlocProvider.of<AuthBloc>(context)
                            .add(AuthEvent.verifyOtp(
                                otp: otp,
                                onVerifySuccess: () {
                                  context.router.replace(const HomeRoute());
                                }));
                      }),
                      _buildOtpDialog(),
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

  Widget _buildOtpDialog() {
    return ValueListenableBuilder(
      valueListenable: ValueNotifier(null),
      builder: (context, value, _) => Center(
        child: RichText(
            text: TextSpan(
                text: "Resend OTP in ",
                style: TextStyle(color: Colors.grey.shade700),
                children: const [
              TextSpan(text: '00:00', style: TextStyle(color: Colors.blue)),
            ])),
      ),
    );
  }

  Widget _buildOtpBody({required Function(String otp) onComplete}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return OTPTextField(
            length: 5,
            fieldWidth: 50,
            spaceBetween: 20,
            width: min(700, MediaQuery.of(context).size.width),
            style: TextStyle(fontSize: displaySize3),
            textFieldAlignment: MainAxisAlignment.center,
            fieldStyle: FieldStyle.box,
            onCompleted: onComplete,
            onChanged: (value) {},
          );
        }),
        SizedBox(height: spaceSizeMedium)
      ],
    );
  }
}
