import 'package:dream_11_app/src/onboarding_screen/loginScreen/forgotpassword.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/singUpScreen.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/term&conditionScreen.dart';
import 'package:dream_11_app/src/user/aadhar_card/aadhar_card.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/assets/srings.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height:100.h,
        width: 100.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                fit: BoxFit.fill)),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                  'LOGIN',
                  style: TextStyle(fontSize: 17.sp,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      loginSignUpButton(context, AssetUtilities.facebook, "Facebook", () {}),
                      loginSignUpButton(context, AssetUtilities.google, "Google", () {})
                    ],
                  ),
                ),
                 SizedBox(
                  height: 2.h,
                ),
                 Text("OR",style: TextStyle(fontSize: 16.sp),),
                 SizedBox(
                  height: 1.7.h,
                ),
                Column(
                 // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(left:3.w, bottom: 1.h),
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(emailController,context, 'Enter your email'),
                     SizedBox(
                      height: 1.5.h,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left:3.w, bottom: 1.h),
                      child: Text(
                        "Password",
                        style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(passwordController, context,'Enter your password'),
                     SizedBox(
                      height:2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right: 1.w),
                          child: InkWell(
                            onTap: () {
                              Get.to(ForgotPassword());
                             // Navigator.push(context, MaterialPageRoute(builder: (context) {return const ForGotPasswordScreen();}));
                            },
                            child: Text(
                              Strings.forgotPasswordText,
                              style: TextStyle(fontFamily: "Imprima",
                                  color: Color.fromRGBO(0, 0, 0, 0.6),fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                     SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.eighteenPlus,
                          height:2.5.h,
                          width: 2.5.h,
                        ),
                         SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              Strings.conditionText,
                              style: TextStyle(fontFamily: "Imprima",
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: 14.sp),
                            ),
                            InkWell(
                                onTap: () {
                                  Get.to(TermConditionScreen());
                                },
                                child: Row(children: [
                                   Text(
                                    'T&C',
                                    style: TextStyle(fontFamily: "Imprima",
                                        color: Color.fromRGBO(255, 0, 0, 0.6),
                                        fontSize: 14.sp),
                                  ),
                                   Text(
                                    ' &',
                                    style: TextStyle(fontFamily: "Imprima",
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: 14.sp),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.offAll(TermConditionScreen());
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) {return const TermConditionScreen();}));
                                    },
                                    child: Row(
                                      children:  [
                                        Text(
                                          'Privacy Policy',
                                          style: TextStyle(fontFamily: "Imprima",
                                              color: Color.fromRGBO(
                                                  255, 0, 0, 0.6),
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                 ]
                               ),
                            ),
                          ],
                        )
                      ],
                    ),
                     SizedBox(
                      height:2.h,
                    ),
                    Center(
                        child: InkWell(
                            onTap: () {
                              Get.offAll(AadharCard());
                             // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {return const AadharCard();}), (route) => false);
                            },
                            child: innerShadowButtonWidget("Login",context,height: 4.h,width: 60.w))),
                     SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          "Don't have account?",
                          style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(SingUpScreen());
                          },
                          child:Text(
                            'Sign Up',
                            style: TextStyle(
                                fontFamily: "Imprima",
                              fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(51, 0, 255, 1),
                                fontSize: 15.sp),
                          ),
                        ),
                      ],
                    ),
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
