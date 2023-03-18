import 'package:dream_11_app/src/onboarding_screen/loginScreen/forgotpassword.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/otpField.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ForGotPasswordScreen extends StatefulWidget {
  const ForGotPasswordScreen({super.key});

  @override
  State<ForGotPasswordScreen> createState() => _ForGotPasswordScreenState();
}

class _ForGotPasswordScreenState extends State<ForGotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    late double hsize = MediaQuery.of(context).size.height;
    late double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: hsize*1,
        width: wsize*1,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                fit: BoxFit.fill)),
        child: Padding(
          padding:  EdgeInsets.only(left: wsize*0.035, right: wsize*0.035),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(
                  height: hsize*0.04,
                ),
                Image.asset(
                  AssetUtilities.cricketSwitchLogo,
                  height:hsize*0.2,
                  width: wsize*0.4,
                ),
                const AutoSizeText(
                  'Verification Code',
                  style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: hsize*0.03,
                ),
                const AutoSizeText(
                  'WE have sent an OTP on your number and email',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(106, 102, 102, 1),fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: hsize*0.13,
                ),
                OTPField(fieldLength: 6, onSubmit: ((p0) {})),
                SizedBox(
                  height: hsize*0.13,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(ForgotPassword());
                      //Navigator.push(context, MaterialPageRoute(builder: (context) {return const  ForgotPassword();}));
                    },
                    child: innerShadowButtonWidget("CONTINUE",context, radius: 10,height: hsize*0.00005 ,width: wsize*0.0015)),
                const SizedBox(
                  height: 20,
                ),
                const AutoSizeText(
                  "Didn't received OTP?",
                  style: TextStyle(fontSize: 12,fontFamily: "Imprima"),
                ),
                const SizedBox(
                  height: 5,
                ),
                const AutoSizeText(
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
