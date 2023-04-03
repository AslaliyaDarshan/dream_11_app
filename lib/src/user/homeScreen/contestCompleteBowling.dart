// ignore_for_file: file_names

import 'package:dream_11_app/controller/MyContestsController.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'contestCompleteFullMatchPlayerStatus.dart';

class ContestCompleteBowling extends StatefulWidget {
  const ContestCompleteBowling({Key? key}) : super(key: key);

  @override
  State<ContestCompleteBowling> createState() => _ContestCompleteBowlingState();
}

class _ContestCompleteBowlingState extends State<ContestCompleteBowling> {
  MyConstantsController cnt = Get.put(MyConstantsController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          height(1.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  cnt.bowlingIndex.value = 1;
                },
                child: Container(
                  height: 5.5.h,
                  width: 32.w,
                  alignment: Alignment.center,
                  color: cnt.bowlingIndex.value == 1
                      ? backgroundGreenClr
                      : Colors.white,
                  child: text("My Contests(0)", 16.5.sp,
                      cnt.bowlingIndex.value == 1 ? Colors.white : textGreyClr),
                ),
              ),
              InkWell(
                onTap: () {
                  cnt.bowlingIndex.value = 2;
                },
                child: Container(
                  height: 5.5.h,
                  width: 32.w,
                  alignment: Alignment.center,
                  color: cnt.bowlingIndex.value == 2
                      ? backgroundGreenClr
                      : Colors.white,
                  child: text("My Teams(0)", 16.5.sp,
                      cnt.bowlingIndex.value == 2 ? Colors.white : textGreyClr),
                ),
              ),
              InkWell(
                onTap: () {
                  cnt.bowlingIndex.value = 3;
                },
                child: Container(
                  height: 5.5.h,
                  width: 32.w,
                  alignment: Alignment.center,
                  color: cnt.bowlingIndex.value == 3
                      ? backgroundGreenClr
                      : Colors.white,
                  child: text("Player Status", 16.5.sp,
                      cnt.bowlingIndex.value == 3 ? Colors.white : textGreyClr),
                ),
              ),
            ],
          ),
          height(1.h),
          cnt.bowlingIndex.value == 1
              ? Column(
                  children: [
                    Container(
                      width: 100.w,
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                      margin: EdgeInsets.symmetric(vertical: 2.h),
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          text("Congratulation! you've won in 1 contest.",
                              16.sp, backgroundGreenClr),
                          Row(
                            children: [
                              Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                      "assets/images/appLogo.png",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              width(2.w),
                              text("${rupee}49", 18.sp, Colors.black),
                            ],
                          ),
                          height(3.h),
                          Container(
                            width: 100.w,
                            padding: EdgeInsets.symmetric(vertical: 1.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: backgroundWhiteClr,
                              border: Border.all(
                                  color: const Color(0xFFDBDBDB), width: 3),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0xFFDBDBDB),
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.w),
                                  child:
                                      text("Rs.51,00,000", 18.sp, Colors.black),
                                ),
                                const Divider(
                                  color: Color(0xFF6F6F6F),
                                  thickness: 1.5,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3.w, vertical: 1.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          text("Prize Pool", 17.sp, Colors.grey),
                                          text("${rupee}5.51 Corers", 17.sp, Colors.black),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          text("Spots", 17.sp, Colors.grey),
                                          text("5,55,555", 17.sp, Colors.black),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          text("Entry", 17.sp, Colors.grey),
                                          text("${rupee}49", 17.sp,
                                              Colors.black),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2.w, vertical: 1.h),
                                  color: const Color(0xFFF5F5F5),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        AssetUtilities.award,
                                        height: 2.h,
                                        width: 2.h,
                                      ),
                                      width(1.w),
                                      text("${rupee}50 Lakhs", 16.sp, Colors.black54),
                                      const Spacer(
                                        flex: 2,
                                      ),
                                      Image.asset(
                                        AssetUtilities.trophy,
                                        height: 2.h,
                                        width: 2.h,
                                      ),
                                      width(1.w),
                                      text("70%", 17.sp, Colors.black54),
                                      const Spacer(
                                        flex: 2,
                                      ),
                                      text("Upto", 17.sp, Colors.black54),
                                      const Spacer(
                                        flex: 5,
                                      ),
                                      const Icon(Icons.gpp_good_outlined),
                                      text("Guaranteed", 17.sp, Colors.black54)
                                    ],
                                  ),
                                ),
                                height(1.h),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2.w, vertical: 1.h),
                                  color: const Color(0xFFF5F5F5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          text("Darshan2103", 17.sp,
                                              Colors.black),
                                          text("T3", 17.sp, Colors.black),
                                          text("751.5", 17.sp, Colors.black),
                                          text(
                                              "#5,51,551", 17.sp, Colors.black),
                                        ],
                                      ),
                                      text("You Won ${rupee}49", 15.sp,
                                          Colors.green),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : cnt.bowlingIndex.value == 2
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Column(
                        children: [
                          height(1.h),
                          Container(
                            height: 2.5.h,
                            width: 100.w,
                            color: const Color.fromRGBO(161, 217, 161, 1),
                            child: Row(
                              children: [
                                width(4.w),
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromRGBO(144, 78, 0, 1),
                                  radius: 10.sp,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  '2 Players not announced in lineup',
                                  style: TextStyle(
                                      color:
                                          const Color.fromRGBO(144, 78, 0, 1),
                                      fontSize: 13.sp),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 20.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(15.sp)),
                            child: Column(
                              children: [
                                Container(
                                  height: 19.5.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.sp),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        AssetUtilities.teambg,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 3.6.h,
                                        width: 100.w,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(15.sp))),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.w),
                                          child: Row(
                                            children: [
                                              text("Team 1", 14.sp,
                                                  backgroundWhiteClr,
                                                  pFontWeight: FontWeight.w500),
                                              const Spacer(),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Icon(
                                                  Icons.edit,
                                                  color: Colors.white,
                                                  size: 18.sp,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4.w,
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Icon(
                                                  Icons.copy,
                                                  color: Colors.white,
                                                  size: 18.sp,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4.w,
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Icon(
                                                  Icons.remove_red_eye_outlined,
                                                  color: Colors.white,
                                                  size: 18.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          width(4.w),
                                          Column(
                                            children: [
                                              text("IND", 16.sp, Colors.white,
                                                  pFontWeight: FontWeight.w700),
                                              text("7", 16.sp, Colors.white,
                                                  pFontWeight: FontWeight.w700),
                                            ],
                                          ),
                                          width(4.w),
                                          Column(
                                            children: [
                                              text("NZ", 16.sp, Colors.white,
                                                  pFontWeight: FontWeight.w700),
                                              text("4", 16.sp, Colors.white,
                                                  pFontWeight: FontWeight.w700),
                                            ],
                                          ),
                                          const Spacer(),
                                          Image.asset(
                                            AssetUtilities.captain,
                                            height: 2.8.h,
                                            width: 2.8.h,
                                          ),
                                          Column(
                                            children: [
                                              Image.asset(
                                                AssetUtilities.viratkohli,
                                                height: 7.h,
                                                width: 7.h,
                                                //fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                height: 2.5.h,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: const ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.black),
                                                  ),
                                                  child: text("V Kohli", 14.sp,
                                                      Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Image.asset(
                                            AssetUtilities.vc,
                                            height: 2.8.h,
                                            width: 2.8.h,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset(
                                                AssetUtilities.suryo,
                                                height: 7.h,
                                                width: 7.h,
                                                //fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                height: 2.5.h,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: const ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.red),
                                                  ),
                                                  child: text("S Yadav", 14.sp,
                                                      Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(10),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.w, vertical: 0.9.h),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            text("WK(1)", 15.sp, Colors.grey),
                                            text("BAT(4)", 15.sp, Colors.grey),
                                            text("AR(2)", 15.sp, Colors.grey),
                                            text("BOWL(4)", 15.sp, Colors.grey),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        text(
                          "Showing Player Stats by Match",
                          16.sp,
                          const Color(0xFF595959),
                        ),
                        Divider(
                          thickness: 1.5,
                          height: 1.h,
                          color: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            width(15.w),
                            Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: backgroundGreenClr,
                                ),
                                text("Your Players", 17.sp, Colors.black),
                              ],
                            ),
                            Row(
                              children: [
                                text("Team 1", 17.sp, Colors.black),
                                width(1.w),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.tune_rounded,
                                    size: 22.sp,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        height(0.5.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 1.w),
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(width: 2, color: Colors.black),
                              bottom: BorderSide(width: 2, color: Colors.black),
                            ),
                          ),
                          child: Row(
                            children: [
                              text("Players", 17.sp, Colors.black),
                              const Spacer(),
                              Container(
                                height: 4.h,
                                width: 0.5.w,
                                margin: EdgeInsets.symmetric(horizontal: 2.w),
                                color: Colors.black,
                              ),
                              text("Points", 17.sp, Colors.black),
                              width(5.w),
                              text("%Sel By", 17.sp, Colors.black),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 54.h,
                          child: SingleChildScrollView(
                            child: Column(
                              children: List.generate(
                                  15,
                                  (index) => InkWell(
                                        onTap: () {
                                          Get.to(
                                              const ContestCompleteFullMatchPlayerStatus());
                                        },
                                        child: Container(
                                          height: 7.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2.w),
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  width: 2,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 5.5.h,
                                                width: 5.5.h,
                                                child: Image.asset(index.isEven
                                                    ? AssetUtilities.viratkohli
                                                    : AssetUtilities.suryo),
                                              ),
                                              width(4.w),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  text("Kieron Pollard", 16.sp,
                                                      Colors.black),
                                                  text("ind - allRounder",
                                                      15.sp, Colors.black),
                                                ],
                                              ),
                                              const Spacer(),
                                              text("100", 17.sp, Colors.black),
                                              width(12.w),
                                              text(
                                                  "150.5", 17.sp, Colors.black),
                                            ],
                                          ),
                                        ),
                                      )),
                            ),
                          ),
                        ),
                      ],
                    ),
        ],
      ),
    );
  }
}
