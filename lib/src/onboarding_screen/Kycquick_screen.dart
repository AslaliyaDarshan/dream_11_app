import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/aadhar_card/aadhar_card.dart';
import 'package:dream_11_app/src/user/aadhar_card/selectIdproof_screen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class KycQuick_Screen extends StatefulWidget {
  const KycQuick_Screen({Key? key}) : super(key: key);

  @override
  State<KycQuick_Screen> createState() => _KycQuick_ScreenState();
}

class _KycQuick_ScreenState extends State<KycQuick_Screen> {
  String selected = 'Linked';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: Text(
          "KYC quick",
          style: TextStyle(fontSize: 17.sp, fontFamily: "Imprima"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(NotificationSettingScreen());
                //Navigator.push(context, MaterialPageRoute(builder: (context) {return const NotificationSettingScreen();}));
              },
              icon: const Icon(Icons.notification_add_sharp)),
          IconButton(
              onPressed: () {
                Get.to(MyAccountScreen());
              },
              icon: const Icon(Icons.wallet_membership)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AssetUtilities.verified,
                  height: 30.h,
                  width: 30.h,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Verify to continue playing for cash",
                style: TextStyle(fontSize: 18.sp, fontFamily: "Imprima"),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                "Ensures you’re not from a restricted state.",
                style: TextStyle(fontSize: 15.sp, fontFamily: "Imprima"),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "Takes less than 2min!",
                style: TextStyle(fontSize: 16.sp, fontFamily: "Imprima"),
              ),
              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 'Linked';
                  });
                },
                child: Container(
                  width: 100.w,
                  height: 13.h,
                  decoration: BoxDecoration(
                      color: selected == 'Linked'
                          ? Color(0xFFB2E99F)
                          : Colors.white,
                      border: Border.all(
                          color: selected == 'Linked'
                              ? Color(0xFF1B6800)
                              : Color(0xFF909090),
                          width: 6.sp),
                      borderRadius: BorderRadius.circular(13.sp)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Mobile',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.sp)),
                                  TextSpan(
                                      text: ' Linked ',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 17.sp)),
                                  TextSpan(
                                      text: 'with Aadhar',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.sp)),
                                ],
                              ),
                            ),
                            Text(
                              "verify with OTP on Digilocker",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.black),
                            )
                          ],
                        ),
                        Transform.scale(
                          scale: 1.5,
                          child: Radio(
                            value: 'Linked',
                            groupValue: selected,
                            onChanged: (value) {
                              setState(() {
                                selected = value as String;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 'not Linked';
                  });
                },
                child: Container(
                  width: 100.w,
                  height: 13.h,
                  decoration: BoxDecoration(
                      color: selected == 'not Linked'
                          ? Color(0xFFB2E99F)
                          : Colors.white,
                      border: Border.all(
                          color: selected == 'not Linked'
                              ? Color(0xFF1B6800)
                              : Color(0xFF909090),
                          width: 6.sp),
                      borderRadius: BorderRadius.circular(13.sp)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Mobile',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.sp)),
                                  TextSpan(
                                      text: ' not Linked ',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 17.sp)),
                                  TextSpan(
                                      text: 'with Aadhar',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.sp)),
                                ],
                              ),
                            ),
                            Text(
                              "Upload ID proof (Aadhaar card,\nPassport,Voter ID,or Driving License)",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.black),
                            )
                          ],
                        ),
                        Transform.scale(
                          scale: 1.5,
                          child: Radio(
                            value: 'not Linked',
                            groupValue: selected,
                            onChanged: (value) {
                              setState(() {
                                selected = value as String;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              InkWell(
                  onTap: () {
                    if (selected == 'Linked') {
                      Get.to(const AadharCard());
                    } else if (selected == 'not Linked') {
                      Get.to(const SelectIdProofScreen());
                    }
                  },
                  child: innerShadowButtonWidget("CONTINUE", context,
                      height: 4.h, width: 80.w)),
              SizedBox(
                height: 6.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
