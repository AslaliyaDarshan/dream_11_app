import 'package:dream_11_app/controller/MyContestsController.dart';
import 'package:dream_11_app/src/user/homeScreen/contestCompleteBating.dart';
import 'package:dream_11_app/src/user/homeScreen/contestCompleteBowling.dart';
import 'package:dream_11_app/src/user/homeScreen/contestCompleteCommentary.dart';
import 'package:dream_11_app/src/user/homeScreen/contestCompleteFullMatch.dart';
import 'package:dream_11_app/src/user/homeScreen/contestCompleteScoreCard.dart';
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
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0xFFD9D9D9),
        body: SingleChildScrollView(
          physics: const PageScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    AssetUtilities.contestCompleted,
                    fit: BoxFit.cover,
                    height: 20.h,
                    width: 100.w,
                  ),
                  Column(
                    children: [
                      height(2.h),
                      ListTile(
                        leading: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 24.sp,
                            color: Colors.white,
                          ),
                        ),
                        title: text("INDIA VS ENGLAND", 17.5.sp, Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                text("England", 17.sp, backgroundWhiteClr),
                                text("199/9 (20)", 17.sp, backgroundWhiteClr),
                              ],
                            ),
                            text("🟢Completed", 15.sp, backgroundWhiteClr),
                            Column(
                              children: [
                                text("India", 17.sp, backgroundWhiteClr),
                                text("200/5 (15)", 17.sp, backgroundWhiteClr),
                              ],
                            ),
                          ],
                        ),
                      ),
                      text("India won by 5 wickets ", 17.sp, backgroundWhiteClr)
                    ],
                  )
                ],
              ),
              Container(
                color: Colors.white,
                child: const TabBar(
                  isScrollable: true,
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
                    ),
                    Tab(
                      text: "Bating",
                    ),
                    Tab(
                      text: "Bowling",
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 74.h,
                child: const TabBarView(
                  children: [
                    ContestCompleteFullMatch(),
                    ContestCompleteScoreCard(),
                    ContestCompleteCommentary(),
                    ContestCompleteBating(),
                    ContestCompleteBowling(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
