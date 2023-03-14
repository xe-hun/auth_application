import 'dart:math';

import 'package:auth_appication/presentation/page_layout.dart';
import 'package:auth_appication/presentation/shared_widgets.dart';
import 'package:auth_appication/presentation/sizes.dart';
import 'package:auth_appication/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
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
                    child:
                        Text('check your email for OTP or input 12345 as otp')),
                SizedBox(height: spaceSizeMedium),

                _buildOtpBody(onSuccess: () {}),
                _buildOtpDialog(onRegister: () {
                  context.router.replace(const SignupRoute());
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOtpDialog({required Function() onRegister}) {
    return Center(
      child: RichText(
          text: TextSpan(
              text: "Resend OTP in",
              style: TextStyle(color: Colors.grey.shade700),
              children: [
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: ValueListenableBuilder(
                  valueListenable: ValueNotifier(null),
                  builder: (context, value, _) => TextButton(
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: onRegister,
                    child: const Text('00:00'),
                  ),
                ))
          ])),
    );
  }

  Widget _buildOtpBody({required Function() onSuccess}) {
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
            onCompleted: (value) {},
            onChanged: (value) {},
          );
        }),
        SizedBox(height: spaceSizeMedium)
      ],
    );
  }
}
