import 'dart:math';

import 'package:auth_appication/application/auth_bloc.dart';
import 'package:auth_appication/presentation/shared/page_layout.dart';
import 'package:auth_appication/presentation/shared/shared_widgets.dart';
import 'package:auth_appication/presentation/shared/sizes.dart';

import 'package:auth_appication/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends HookWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final otpTEC = useRef(OtpFieldController());
    // final Flushbar = useState<String?>(null);

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          notAuthenticated: (s) => PageLayout(
            snackbarMessage: s.snackbarMessage,
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

                      _buildOtpBody(
                          otpTEC: otpTEC.value,
                          onComplete: (otp) {
                            BlocProvider.of<AuthBloc>(context)
                                .add(AuthEvent.verifyOtp(
                                    otp: otp,
                                    onVerifySuccess: () {
                                      context.router.replace(const HomeRoute());
                                    },
                                    onVerifyFailure: (errorMessage) {
                                      otpTEC.value.clear();
                                      FocusScope.of(context).unfocus();
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
    return Builder(builder: (context) {
      return SizedBox(
        height: 40,
        child: ValueListenableBuilder(
          valueListenable: BlocProvider.of<AuthBloc>(context).timerCountdown,
          builder: (context, value, _) {
            final countdownIsZero = value <= 0;
            final countDown = value;

            if (countdownIsZero) {
              return Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context)
                        .add(const AuthEvent.sendOtp());
                  },
                  child: const Text('resend otp'),
                ),
              );
            }

            return Center(
              child: RichText(
                  text: TextSpan(
                      text: "Resend OTP in ",
                      style: TextStyle(color: Colors.grey.shade700),
                      children: [
                    TextSpan(
                        text: '$countDown',
                        style: const TextStyle(color: Colors.blue)),
                  ])),
            );
          },
        ),
      );
    });
  }

  Widget _buildOtpBody(
      {required Function(String otp) onComplete,
      required OtpFieldController otpTEC}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return OTPTextField(
            controller: otpTEC,
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
