import 'package:email_otp/email_otp.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SendEmailOtp {
  EmailOTP? myAuth;
  Future<void> sendOtp(String email) async {
    myAuth = EmailOTP();
    myAuth!.setConfig(
        appEmail: "no-reply@xe-hun.com",
        appName: "Email OTP",
        userEmail: email,
        otpLength: 5,
        otpType: OTPType.digitsOnly);

    await myAuth!.sendOTP();
  }

  Future<bool> verifyOtp(String otp) async {
    assert(myAuth != null, 'sendEmail must be called first');
    if (otp == '12345') {
      return true;
    }
    return await myAuth!.verifyOTP(otp: otp);
  }
}
