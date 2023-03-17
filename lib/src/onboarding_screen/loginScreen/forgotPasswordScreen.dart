import 'package:dream_11_app/src/onboarding_screen/loginScreen/forgotpassword.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/otpField.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';

class ForGotPasswordScreen extends StatefulWidget {
  const ForGotPasswordScreen({super.key});

  @override
  State<ForGotPasswordScreen> createState() => _ForGotPasswordScreenState();
}

class _ForGotPasswordScreenState extends State<ForGotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Image.asset(
                  AssetUtilities.cricketSwitchLogo,
                  height: 160,
                  width: 160,
                ),
                const Text(
                  'Verification Code',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  'WE have sent an OTP on your number and email',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(106, 102, 102, 1)),
                ),
                const SizedBox(
                  height: 110,
                ),
                OTPField(fieldLength: 6, onSubmit: ((p0) {})),
                const SizedBox(
                  height: 135,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const  ForgotPassword();
                      }));
                    },
                    child: innerShadowButtonWidget("CONTINUE",context, radius: 10)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Didn't received OTP?",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Resend OTP?",
                  style: TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
