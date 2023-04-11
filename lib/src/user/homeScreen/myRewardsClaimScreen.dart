// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:dream_11_app/src/user/homeScreen/discount50OffScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyRewardsClaimScreen extends StatefulWidget {
  const MyRewardsClaimScreen({Key? key}) : super(key: key);

  @override
  State<MyRewardsClaimScreen> createState() => _MyRewardsClaimScreenState();
}

class _MyRewardsClaimScreenState extends State<MyRewardsClaimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreenClr,
        title: text("My Rewards", 18.sp, backgroundWhiteClr),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                AssetUtilities.extraBenefit,
                fit: BoxFit.cover,
                height: 42.h,
                width: 100.w,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 4.h, right: 15.w),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(backgroundGreenClr),
                    ),
                    onPressed: () {
                      Get.to(const Discount50OffScreen());
                    },
                    child: text("Get with 150p", 15.5.sp, backgroundWhiteClr),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 13.h),
                  child:
                      text("Redeem within 00:34:41", 17.sp, Colors.redAccent),
                ),
              ),
            ],
          ),
          const Spacer(),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                AssetUtilities.exchangeOffer,
                fit: BoxFit.cover,
                height: 47.h,
                width: 100.w,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.5.h, right: 15.w),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(backgroundGreenClr),
                    ),
                    onPressed: () {
                      Get.to(const Discount50OffScreen());
                    },
                    child: text("Get with 150p", 15.5.sp, backgroundWhiteClr),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 17.h),
                  child: text(
                      "Get Rs.500 off on other services", 17.sp, Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
