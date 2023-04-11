import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
    TextEditingController oldPasswordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

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
          padding:  EdgeInsets.symmetric(horizontal: 4.w),
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
                  'Change Password',
                  style: TextStyle(fontSize: 16.sp),
                ),
                 SizedBox(
                  height: 2.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:4.w, bottom: 1.h),
                      child: Row(
                        children:  [
                          Text(
                            "Old Password",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                    customTextFormField(oldPasswordController, context,'Enter your old Password',),
                     SizedBox(
                      height: 1.5.h,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: 4.w, bottom: 1.h),
                      child: Text(
                        "New Password",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    customTextFormField(newPasswordController,context, 'Enter your new Password'),
                     SizedBox(
                      height: 1.5.h,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: 4.w, bottom: 1.h),
                      child: Text("Confirm Password",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    customTextFormField(newPasswordController,context, 'Enter your confirm Password'),
                     SizedBox(
                      height: 5.h,
                    ),
                     Text(
                        "Your password should be a minimum of a characters with at least 1 number or special Character.",
                        style: TextStyle(fontSize: 14.5.sp),
                        textAlign: TextAlign.center),
                     SizedBox(
                      height: 15.h,
                    ),
                    Center(child: GestureDetector(onTap: (){
                      Get.back();
                    },child: innerShadowButtonWidget("Send",context, radius: 20.sp,width: 80.w))),
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
