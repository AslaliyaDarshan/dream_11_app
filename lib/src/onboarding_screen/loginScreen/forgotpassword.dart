import 'package:dream_11_app/src/onboarding_screen/loginScreen/changePasswordScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();

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
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                 SizedBox(
                  height: 2.h,
                ),
                Image.asset(
                  AssetUtilities.cricketSwitchLogo,
                  height: 20.h,
                  width: 20.h,
                ),
                 Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: 4.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 4.w, bottom: 1.h),
                      child: Row(
                        children:  [
                          Text(
                            "Email",
                            style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                          ),
                          Text(
                            "  OR",
                            style: TextStyle(fontSize: 16.sp, color: Colors.red,fontFamily: "Imprima"),
                          ),
                          Text(
                            "  phone",
                            style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                    ),
                    customTextFormField(emailController, context,'Enter your email OR Phone Number',),
                     SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 3.w),
                          child: GestureDetector(
                            child:  Text(
                              "Verify Email OR Phone",
                              style: TextStyle(fontFamily: "Imprima",fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                     SizedBox(
                      height: 1.h,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: 4.w, bottom: 1.h),
                      child: Text(
                        "Enter your OTP",
                        style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(otpController, context,'Enter your OTP hear'),
                     SizedBox(
                      height: 8.h,
                     ),
                    Center(
                        child: GestureDetector(
                            onTap: () {
                              Get.to(ChangePasswordScreen());
                              //Navigator.push(context, MaterialPageRoute(builder: (context) {return const ChangePasswordScreen();}));
                            },
                            child: innerShadowButtonWidget("Send",context, radius: 0,width: 80.w))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
