import 'package:dream_11_app/src/onboarding_screen/Kycquick_screen.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/forgotpassword.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/otpField.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                fit: BoxFit.fill)),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(
                  height: 2.h,
                ),
                Image.asset(
                  AssetUtilities.cricketSwitchLogo,
                  height:20.h,
                  width: 20.h,
                ),
                 Text(
                  'Verification Code',
                  style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: 2.h,
                ),
                 Text(
                  'WE have sent an OTP on your number and email',
                  style: TextStyle(
                      fontSize: 16.sp, color: Color.fromRGBO(106, 102, 102, 1),fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: 10.h,
                ),
                OTPField(fieldLength: 6, onSubmit: ((p0) {})),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(KycQuick_Screen());
                      //Navigator.push(context, MaterialPageRoute(builder: (context) {return const  ForgotPassword();}));
                    },
                    child: innerShadowButtonWidget("CONTINUE",context, radius: 10,height: 4.h ,width: 70.w)),
                 SizedBox(
                  height: 2.h,
                ),
                 Text(
                  "Didn't received OTP?",
                  style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Resend OTP?",
                  style: TextStyle(
                      fontSize: 14.sp,
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
