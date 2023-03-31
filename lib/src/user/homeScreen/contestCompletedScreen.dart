import 'package:dream_11_app/controller/MyContestsController.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContestCompletedScreen extends StatefulWidget {
  const ContestCompletedScreen({Key? key}) : super(key: key);

  @override
  State<ContestCompletedScreen> createState() => _ContestCompletedScreenState();
}

class _ContestCompletedScreenState extends State<ContestCompletedScreen> {
  MyConstantsController cnt = Get.put(MyConstantsController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFD9D9D9),
        body: SingleChildScrollView(
          physics: const PageScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                AssetUtilities.contestCompleted,
                fit: BoxFit.cover,
                height: 20.h,
                width: 100.w,
              ),
              Container(
                color: Colors.white,
                child: const TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Color(0xFF006400),
                  tabs: [
                    Tab(
                      text: "Full Match",
                    ),
                    Tab(
                      text: "ScoreCard",
                    ),
                    Tab(
                      text: "Commentary",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 74.h,
                child: Obx(
                  () => TabBarView(
                    children: [
                      Column(
                        children: [
                          height(1.5.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  cnt.index.value = 1;
                                },
                                child: Container(
                                  height: 5.5.h,
                                  width: 32.w,
                                  alignment: Alignment.center,
                                  color: cnt.index.value == 1
                                      ? backgroundGreenClr
                                      : Colors.white,
                                  child: text(
                                      "My Contests(0)",
                                      16.5.sp,
                                      cnt.index.value == 1
                                          ? Colors.white
                                          : textGreyClr),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  cnt.index.value = 2;
                                },
                                child: Container(
                                  height: 5.5.h,
                                  width: 32.w,
                                  alignment: Alignment.center,
                                  color: cnt.index.value == 2
                                      ? backgroundGreenClr
                                      : Colors.white,
                                  child: text(
                                      "My Teams(0)",
                                      16.5.sp,
                                      cnt.index.value == 2
                                          ? Colors.white
                                          : textGreyClr),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  cnt.index.value = 3;
                                },
                                child: Container(
                                  height: 5.5.h,
                                  width: 32.w,
                                  alignment: Alignment.center,
                                  color: cnt.index.value == 3
                                      ? backgroundGreenClr
                                      : Colors.white,
                                  child: text(
                                      "Player Status",
                                      16.5.sp,
                                      cnt.index.value == 3
                                          ? Colors.white
                                          : textGreyClr),
                                ),
                              ),
                            ],
                          ),
                          height(3.h),
                          cnt.index.value == 1
                              ? Column(
                                  children: [
                                    text(
                                        "You Haven’t joined any challenge for this match.",
                                        16.sp,
                                        Colors.black),
                                  ],
                                )
                              : cnt.index.value == 2
                                  ? Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2.w),
                                      child: Column(
                                        children: [
                                          height(1.h),
                                          Container(
                                            height: 2.5.h,
                                            width: 100.w,
                                            color: const Color.fromRGBO(
                                                161, 217, 161, 1),
                                            child: Row(
                                              children: [
                                                width(4.w),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      const Color.fromRGBO(
                                                          144, 78, 0, 1),
                                                  radius: 10.sp,
                                                ),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                Text(
                                                  '2 Players not announced im lineup',
                                                  style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              144, 78, 0, 1),
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
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15.sp)),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 19.5.h,
                                                  width: 100.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.sp),
                                                      image:
                                                          const DecorationImage(
                                                              image: AssetImage(
                                                                AssetUtilities
                                                                    .teambg,
                                                              ),
                                                              fit: BoxFit
                                                                  .cover)),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 3.6.h,
                                                        width: 100.w,
                                                        decoration: BoxDecoration(
                                                            color: Colors.black,
                                                            borderRadius:
                                                                BorderRadius.vertical(
                                                                    top: Radius
                                                                        .circular(
                                                                            15.sp))),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      4.w),
                                                          child: Row(
                                                            children: [
                                                              text(
                                                                  "Team 1",
                                                                  14.sp,
                                                                  backgroundWhiteClr,
                                                                  pFontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                              const Spacer(),
                                                              GestureDetector(
                                                                onTap: () {},
                                                                child: Icon(
                                                                  Icons.edit,
                                                                  color: Colors
                                                                      .white,
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
                                                                  color: Colors
                                                                      .white,
                                                                  size: 18.sp,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 4.w,
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {},
                                                                child: Icon(
                                                                  Icons
                                                                      .remove_red_eye_outlined,
                                                                  color: Colors
                                                                      .white,
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
                                                              text("IND", 16.sp,
                                                                  Colors.white,
                                                                  pFontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                              text("7", 16.sp,
                                                                  Colors.white,
                                                                  pFontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ],
                                                          ),
                                                          width(4.w),
                                                          Column(
                                                            children: [
                                                              text("NZ", 16.sp,
                                                                  Colors.white,
                                                                  pFontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                              text("4", 16.sp,
                                                                  Colors.white,
                                                                  pFontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ],
                                                          ),
                                                          const Spacer(),
                                                          Image.asset(
                                                            AssetUtilities
                                                                .captain,
                                                            height: 2.8.h,
                                                            width: 2.8.h,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Image.asset(
                                                                AssetUtilities
                                                                    .viratkohli,
                                                                height: 7.h,
                                                                width: 7.h,
                                                                //fit: BoxFit.cover,
                                                              ),
                                                              SizedBox(
                                                                height: 2.5.h,
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style:
                                                                      const ButtonStyle(
                                                                    backgroundColor:
                                                                        MaterialStatePropertyAll(
                                                                            Colors.black),
                                                                  ),
                                                                  child: text(
                                                                      "V Kohli",
                                                                      14.sp,
                                                                      Colors
                                                                          .white),
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
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Image.asset(
                                                                AssetUtilities
                                                                    .suryo,
                                                                height: 7.h,
                                                                width: 7.h,
                                                                //fit: BoxFit.cover,
                                                              ),
                                                              SizedBox(
                                                                height: 2.5.h,
                                                                child:
                                                                    ElevatedButton(
                                                                  onPressed:
                                                                      () {},
                                                                  style:
                                                                      const ButtonStyle(
                                                                    backgroundColor:
                                                                        MaterialStatePropertyAll(
                                                                            Colors.red),
                                                                  ),
                                                                  child: text(
                                                                      "S Yadav",
                                                                      14.sp,
                                                                      Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .vertical(
                                                            bottom:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                        ),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 3.w,
                                                                vertical:
                                                                    0.9.h),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            text("WK(1)", 15.sp,
                                                                Colors.grey),
                                                            text(
                                                                "BAT(4)",
                                                                15.sp,
                                                                Colors.grey),
                                                            text("AR(2)", 15.sp,
                                                                Colors.grey),
                                                            text(
                                                                "BOWL(4)",
                                                                15.sp,
                                                                Colors.grey),
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
                                        height(1.h),
                                        text(
                                          "Showing Player Stats by Match",
                                          16.sp,
                                          const Color(0xFF595959),
                                        ),
                                        height(1.h),
                                        const Divider(
                                          thickness: 1.5,
                                          color: Colors.black,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            width(15.w),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.check_circle,
                                                  color: Color(0xFF4CAF50),
                                                ),
                                                text("Your Players", 18.sp,
                                                    Colors.black),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                text("Team 1", 18.sp,
                                                    Colors.black),
                                                Icon(
                                                  Icons.tune_rounded,
                                                  size: 25.sp,
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                        ],
                      ),
                      Column(
                        children: [],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
