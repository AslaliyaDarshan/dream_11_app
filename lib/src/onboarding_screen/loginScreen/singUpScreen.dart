import 'package:dream_11_app/src/onboarding_screen/loginScreen/forgotPasswordScreen.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/loginScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController teamNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  bool isSelected = false;
  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                 SizedBox(
                   height: 1.h,
                ),
                Image.asset(
                  AssetUtilities.cricketSwitchLogo,
                  height:20.h,
                  width: 20.h,
                ),
                 Text(
                  'Resister',
                  style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: 2.h ,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(left:1.5.h, bottom: 1.h),
                      child: Text(
                        "Email Address",
                        style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(emailController,context,'Enter your email'),
                    SizedBox(
                      height: 2.h,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left:1.5.h, bottom: 1.h),
                      child: Text(
                        "Mobile Number",
                        style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(
                        mobileNumberController, context,'Enter your mobile number'),
                    SizedBox(
                      height: 2.h,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left:1.5.h, bottom: 1.h),
                      child: Text(
                        "Your team name",
                        style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(
                        teamNameController,context, 'Enter your Team Name'),
                    SizedBox(
                      height: 2.h,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left:1.5.h, bottom: 1.h),
                      child: Text(
                        "Password",
                        style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(
                        confirmPassController, context,'Enter your password'),
                    SizedBox(
                      height: 2.h,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left:1.5.h, bottom: 1.h),
                      child: Text(
                        "Confirm Password",
                        style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(emailController, context,'Confirm Password'),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Checkbox(
                            value: isSelected,
                            onChanged: ((value) {
                              isSelected = value!;
                              setState(() {});
                            })),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              maxLines: 1,
                              "I clarify that I am above 18 years by",
                              style: TextStyle(fontFamily: "Imprima",
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 16.sp),
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: Row(children: [
                                   Text(
                                    'registering, I agree to ',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 16.sp,fontFamily: "Imprima"),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                    },
                                    child:  Text(
                                      'T&Cs .',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.underline,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 16.sp,fontFamily: "Imprima"),
                                    ),
                                  ),
                                ]))
                          ],
                        )
                      ],
                    ),
                     SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.to(ForGotPasswordScreen());
                            },
                            child: customButton("CREATE ACCOUNT", context,radius: 30,height:3.7.h,width:40.w )),

                        const Text(
                          "OR",
                          style: TextStyle(fontSize: 18,fontFamily: "Imprima"),
                        ),

                        GestureDetector(
                            onTap: () {
                              Get.to(LoginPage());
                             // Navigator.push(context, MaterialPageRoute(builder: (context) {return LoginPage();}));
                            },
                            child: customButton("Sign in", context,radius: 30,height:3.7.h,width:40.w)),
                      ],
                    ),
                     SizedBox(
                      height:0.04,
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
