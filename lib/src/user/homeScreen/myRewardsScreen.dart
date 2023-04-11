// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'myRewardsClaimScreen.dart';

class MyRewardsScreen extends StatefulWidget {
  const MyRewardsScreen({Key? key}) : super(key: key);

  @override
  State<MyRewardsScreen> createState() => _MyRewardsScreenState();
}

class _MyRewardsScreenState extends State<MyRewardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreenClr,
        title: text("My Rewards", 18.sp, backgroundWhiteClr),
      ),
      body: Column(
        children: [
          Image.asset(
            AssetUtilities.rewardsImg,
            fit: BoxFit.cover,
            height: 50.h,
            width: 100.w,
          ),
          height(2.h),
          text("Here’s a gift from us to get you started", 17.sp, Colors.black),
          height(7.h),
          text("1250", 21.sp, Colors.black),
          text("Reward Points!!!", 21.sp, Colors.black),
          height(5.h),
          InkWell(
            onTap: () {
              Get.to(const MyRewardsClaimScreen());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 7.w),
              height: 7.h,
              width: 100.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: backgroundGreenClr,
                border: Border.all(
                  width: 4,
                  color: const Color(0xFF9CD85C),
                ),
                borderRadius: BorderRadius.circular(30.sp),
              ),
              child: text("Claim", 22.sp, backgroundWhiteClr),
            ),
          )
        ],
      ),
    );
  }
}
