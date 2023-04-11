// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Discount50OffScreen extends StatefulWidget {
  const Discount50OffScreen({Key? key}) : super(key: key);

  @override
  State<Discount50OffScreen> createState() => _Discount50OffScreenState();
}

class _Discount50OffScreenState extends State<Discount50OffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 15.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: backgroundWhiteClr,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  Row(
                    children: [
                      text("Insufficient Balance:  ", 15.5.sp, Colors.black54),
                      SizedBox(
                        height: 5.h,
                        width: 5.h,
                        child: ClipOval(
                          child: Image.asset("assets/images/appLogo.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                      text(
                        "  500",
                        16.sp,
                        const Color(0xFF90641C),
                      ),
                    ],
                  ),
                  const Spacer(),
                  text(
                    "Earn DreamCoins",
                    16.sp,
                    Colors.black,
                  ),
                ],
              ),
            ),
            // height(1.h),
            Container(
              height: 6.h,
              width: 100.w,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text("GET REWARD FOR  ", 17.sp, Colors.black54),
                  Container(
                    height: 6.h,
                    width: 6.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ClipOval(
                      child: Image.asset("assets/images/appLogo.png",
                          fit: BoxFit.cover),
                    ),
                  ),
                  text("  500", 17.sp, Colors.black54),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            AssetUtilities.discount50Off,
            height: 37.h,
            width: 100.w,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text("50% OFF: Discount Pass", 20.sp, Colors.black),
                height(1.5.h),
                Row(
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ClipOval(
                        child: Image.asset("assets/images/appLogo.png",
                            fit: BoxFit.cover),
                      ),
                    ),
                    width(2.w),
                    text("500", 18.sp, backgroundGreenClr),
                  ],
                ),
                height(2.h),
                text(
                    "Enjoy your 50% Discount Pass and join any contests up to ${rupee}25",
                    14.5.sp,
                    Colors.grey),
                height(1.5.h),
                Container(
                  height: 7.5.h,
                  width: 100.w,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.sp),
                    border: Border.all(color: Colors.black54, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text("Valid Until", 17.sp, Colors.black54),
                      text("30 Jan 2023", 17.sp, Colors.black),
                    ],
                  ),
                ),
                height(1.h),
                text("How to redeem", 17.sp, Colors.black),
                height(1.h),
                text("""1.Buy the pass with your CrickCoins
2.The pass will be credited to your account
3.The pass will expire as per the validity mentioned above""", 15.sp,
                    Colors.grey),
                height(1.h),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 7.h,
                    width: 100.w,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black54, width: 2),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text("Terms and Conditions", 19.sp, Colors.black),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
