import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/aadhar_card/selectIdproof_screen.dart';
import 'package:dream_11_app/src/user/homeScreen.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AllowDennyScreen extends StatefulWidget {
  const AllowDennyScreen({super.key});

  @override
  State<AllowDennyScreen> createState() => _AllowDennyScreenState();
}

class _AllowDennyScreenState extends State<AllowDennyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text(
          "KYC quick",
          style: TextStyle(fontSize: 17.sp,fontFamily: "Imprima"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(NotificationSettingScreen());
              }, icon:  Icon(Icons.notification_add_sharp,size: 20.sp,)),
          IconButton(
              onPressed: () {
                Get.to(MyAccountScreen());
              }, icon:  Icon(Icons.wallet_membership,size: 20.sp,)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 3.h,
                ),
                 Text(
                  "Digital Onboarding",
                  style: TextStyle(fontSize: 22.sp,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: 3.h,
                ),
                Wrap(children:  [
                  Text( 
                    "You are Providing your consent to share your Digilocker document with Digital Onboarding.",
                    style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
                  ),
                ]),
                Center(
                  child: Column(
                    children: [
                       SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(HomeScreen());
                           //Navigator.push(context, MaterialPageRoute(builder: (context) {return SelectIdProofScreen();}));
                          },
                          child: innerShadowButtonWidget("Allow",context,width: 60.w)),
                       SizedBox(
                        height: 2.5.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(HomeScreen());
                          }, child: innerShadowButtonWidget("Deny",context,width: 60.w)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
