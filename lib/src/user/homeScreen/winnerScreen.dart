// ignore_for_file: file_names

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WinnerScreen extends StatefulWidget {
  const WinnerScreen({super.key});

  @override
  State<WinnerScreen> createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {
  List userList = [
    {
      'rank': '#0',
      'arrow': const SizedBox.shrink(),
      'name': 'RAJG00',
      'points': '0 pts'
    },
    {
      'rank': '#4',
      'arrow': const SizedBox.shrink(),
      'name': 'VIRAT11',
      'points': '32365.5pts'
    },
    {
      'rank': '#5',
      'arrow': const Icon(
        Icons.arrow_drop_up,
        color: Colors.green,
      ),
      'name': 'MUMBAI01',
      'points': '32315.5pts'
    },
    {
      'rank': '#6',
      'arrow': const Icon(
        Icons.arrow_drop_down,
        color: Colors.red,
      ),
      'name': 'BUFFY',
      'points': '32242.5pts'
    },
    {
      'rank': '#7',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const Icon(
        Icons.arrow_drop_up,
        color: Colors.green,
      ),
      'name': 'MODI512',
      'points': '32218 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 4.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(54, 130, 54, 1),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'T-20 League 2022-23',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 16.sp),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 23.sp,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Image.asset(AssetUtilities.celebration),
                  SizedBox(
                    height: 30.h,
                    width: 25.w,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            AssetUtilities.award1,
                            height: 20.h,
                          ),
                          const Text(
                            'jaitejal \n32546 pts',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(54, 130, 54, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            AssetUtilities.award2,
                            height: 20.h,
                          ),
                          const Text(
                            'Sunny1164 \n32742.50 pts',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(54, 130, 54, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 7.h, right: 2.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            AssetUtilities.award3,
                            height: 20.h,
                            width: 25.w,
                          ),
                          const Text(
                            'K.m.sahanuaj \n32430.50 pts',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(54, 130, 54, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 4.h,
                margin: EdgeInsets.only(
                    left: 2.w, right: 2.w, top: 2.h, bottom: 2.5.h),
                padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    color: const Color.fromRGBO(92, 154, 92, 1)),
                child: Row(
                  children: [
                    Text(
                      'Rank',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      'User Name',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      'Point',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100.w,
                height: 42.h,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(54, 130, 54, 0.81),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.sp),
                  ),
                ),
                child: ListView.builder(
                  itemCount: userList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 2.h, left: 6.w, right: 6.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            userList[index]['rank'],
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 15.sp,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                userList[index]['arrow'],
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Icon(
                            Icons.person_pin,
                            color: Colors.white,
                            size: 23.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            userList[index]['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            userList[index]['points'],
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  bottomSheet();
                },
                child: Container(
                  height: 4.h,
                  width: 100.w,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 0.5.h),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(54, 130, 54, 0.81),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.sp),
                      topRight: Radius.circular(30.sp),
                    ),
                  ),
                  child: text(
                      "Leaderboard prizes breakup", 16.sp, backgroundWhiteClr),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bottomSheet() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: const Color(0xFF0A4807),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.sp),
                topRight: Radius.circular(15.sp),
              ),
            ),
            child: ListView.builder(
              controller: scrollController,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 1.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                    ),
                    height(2.h),
                    text("Leaderboard prizes breakup", 18.sp,
                        backgroundWhiteClr),
                    height(2.h),
                    Container(
                      height: 5.h,
                      width: 100.w,
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      alignment: Alignment.centerRight,
                      color: const Color(0xFF368236),
                      child: text("Rank", 18.sp, backgroundWhiteClr),
                    ),
                    row("₹500000", "Rank 1"),
                    row("₹100000", "Rank 2-3"),
                    row("₹50000", "Rank 4-5"),
                    row("₹20000", "Rank 6-10"),
                    row("₹15000", "Rank 11-20"),
                    row("₹10000", "Rank 21-50"),
                    row("₹5000", "Rank 51-100"),
                    row("₹1000", "Rank 101-200"),
                    row("₹500", "Rank 201-500"),
                    row("₹300", "Rank 501-1000"),
                    row("₹100", "Rank 1001-10000"),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  row(String pStrTxt, String pStrTxt1) {
    return Container(
      height: 6.h,
      width: 100.w,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        border: Border(
          bottom:
              BorderSide(color: backgroundWhiteClr.withOpacity(0.8), width: 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text(pStrTxt, 18.sp, backgroundWhiteClr),
          text(pStrTxt1, 18.sp, backgroundWhiteClr),
        ],
      ),
    );
  }
}
