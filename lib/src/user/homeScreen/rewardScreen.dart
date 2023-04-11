// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:dream_11_app/controller/homePageController.dart';
import 'package:dream_11_app/src/user/homeScreen/earnCrickCoin.dart';
import 'package:dream_11_app/src/user/homeScreen/learnHowToEarnCoin.dart';
import 'package:dream_11_app/src/user/homeScreen/myRewardsScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  HomePageController cnt = Get.put(HomePageController());

  @override
  void initState() {
    setState(() {
      cnt.select.value = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 3.5.h,
            color: const Color.fromRGBO(7, 37, 7, 1),
            child: GestureDetector(
              onTap: () {
                Get.to(const EarnCrickCoinScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetUtilities.coin),
                  Text(
                    '1 Bonus Cash =₹1 *',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontFamily: "Imprima"),
                  ),
                  CircleAvatar(
                    radius: 12.sp,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text(
                        '?',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 28.h,
            width: 100.w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetUtilities.rewardBg),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Image.asset(
                  AssetUtilities.coin,
                  height: 8.h,
                  width: 8.h,
                ),
                Text(
                  'Crick Coins Balance',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontFamily: "Imprima"),
                ),
                Text(
                  '00',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.sp,
                      fontFamily: "Imprima"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My History ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontFamily: "Imprima"),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15.sp,
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(const LearnHowToEarnCoinScreen());
                    //Navigator.push(context, MaterialPageRoute(builder: (context) {return const LearnHowToEarnCoinScreen();}));
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 4.h,
                      width: 80.w,
                      margin: EdgeInsets.only(bottom: 3.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: const Color.fromRGBO(10, 72, 7, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 13.sp,
                            backgroundColor: Colors.white,
                            child: const Center(
                              child: Text(
                                '?',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Learn how to earn CrickCoins',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
            child: Padding(
              padding: EdgeInsets.only(top: 1.5.h),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 14, right: 14, top: 0),
                      child: Text(
                        'Crick Coins',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Imprima"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: SizedBox(
                        width: 90.w,
                        child: Text(
                          'redeem these boosters while joining any eligible contest',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Imprima"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          coin('2x', "2x CrickCoins", '40.00'),
                          coin('3x', "3x CrickCoins", '60.00'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          coin('4x', "4x CrickCoins", '75.00'),
                          coin('5x', "5x CrickCoins", '100.00'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(241, 238, 238, 1),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.sp))),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 3.6.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.sp),
                                    border:
                                        Border.all(color: backgroundGreenClr),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Reward Shop',
                                      style: TextStyle(
                                          color: backgroundGreenClr,
                                          fontSize: 15.sp,
                                          fontFamily: "Imprima"),
                                    ),
                                  ),
                                ),
                                Obx(
                                  () => InkWell(
                                    onTap: () {
                                      cnt.select.value = !cnt.select.value;
                                      Timer(
                                        const Duration(milliseconds: 500),
                                        () => Get.to(
                                          const MyRewardsScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 3.6.h,
                                      width: 40.w,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.sp),
                                        border: Border.all(
                                            color: cnt.select.value
                                                ? backgroundWhiteClr
                                                : backgroundGreenClr),
                                      ),
                                      child: Text(
                                        'My Rewards',
                                        style: TextStyle(
                                            color: cnt.select.value
                                                ? Colors.black
                                                : backgroundGreenClr,
                                            fontSize: 15.sp,
                                            fontFamily: "Imprima"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            height(2.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 15.h,
                                  width: 15.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(11.sp),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              AssetUtilities.rewar1))),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 0.5.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1.5.w),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              AssetUtilities.coin,
                                              height: 1.h,
                                              width: 1.h,
                                            ),
                                            Text(
                                              '180',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontFamily: "Imprima"),
                                            ),
                                            const Spacer(),
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 10.sp,
                                              child: Center(
                                                child: Image.asset(
                                                  AssetUtilities.bgg,
                                                  height: 2.h,
                                                  width: 2.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 15.h,
                                  width: 15.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(11.sp),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              AssetUtilities.rewar2))),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 0.5.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1.5.w),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              AssetUtilities.coin,
                                              height: 1.h,
                                              width: 1.h,
                                            ),
                                            Text(
                                              '180',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                  fontFamily: "Imprima"),
                                            ),
                                            const Spacer(),
                                            CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 10.sp,
                                              child: Center(
                                                child: Image.asset(
                                                  AssetUtilities.bgg,
                                                  height: 2.h,
                                                  width: 2.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            height(2.h),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget coin(String txt, String name, String coin) {
    return Container(
      height: 7.h,
      width: 43.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(color: Colors.grey)),
      child: Stack(
        children: [
          Container(
            height: 7.h,
            width: 7.w,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(193, 255, 193, 1),
              borderRadius:
                  BorderRadius.horizontal(left: Radius.circular(10.sp)),
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 2.w,
              ),
              Container(
                height: 4.h,
                width: 4.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color.fromRGBO(0, 100, 0, 1), width: 5.sp),
                    color: const Color.fromRGBO(107, 190, 107, 1)),
                child: Center(
                  child: Text(
                    txt,
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontFamily: "Imprima"),
                  ),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontFamily: "Imprima"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        AssetUtilities.coin,
                        height: 2.h,
                        width: 2.h,
                      ),
                      Text(
                        coin,
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontFamily: "Imprima"),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
