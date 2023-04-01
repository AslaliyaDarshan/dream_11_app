// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';
import 'package:dream_11_app/src/drawerPage/drawer_More.dart';
import 'package:dream_11_app/src/user/homeScreen/homepage.dart';
import 'package:dream_11_app/src/user/homeScreen/rewardScreen.dart';
import 'package:dream_11_app/src/user/homeScreen/winnerScreen.dart';
import 'package:dream_11_app/widget/drawerWidget.dart';
import 'package:get/get.dart';
import 'package:dream_11_app/controller/homePageController.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'homeScreen/contestPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List iconList = [
    AssetUtilities.bottom1,
    AssetUtilities.bottom2,
    AssetUtilities.bottom3,
    AssetUtilities.bottom4,
    AssetUtilities.bottom5
  ];

  List textList = ['Home', 'My Context', 'Rewards', 'Winners', 'More'];
  final HomePageController controller = Get.put(HomePageController());
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        key: _scaffoldKey,
        drawer: const DrawerWidger(),
        appBar: controller.selectedIndex.value == 3
            ? null
            : AppBar(
                leading: controller.selectedIndex.value == 2
                    ? null
                    : IconButton(
                        icon: Icon(
                          Icons.menu_sharp,
                          size: 20.sp,
                        ),
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                      ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notification_add_sharp,
                        size: 20.sp,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_balance_wallet_sharp,
                        size: 20.sp,
                      )),
                ],
                backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
                title: Text(
                  controller.selectedIndex.value == 2
                      ? 'Bonus Rewards '
                      : "Home",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
        body: Obx(
          (() => Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (controller.selectedIndex.value == 0)
                    HomePage(controller: controller),
                  if (controller.selectedIndex.value == 1) ...[
                    ContestScreen(controller: controller),
                    const Spacer(),
                  ],
                  if (controller.selectedIndex.value == 2) ...[
                    const RewardScreen(),
                  ],
                  if (controller.selectedIndex.value == 3) ...[
                    const WinnerScreen(),
                  ],
                  if (controller.selectedIndex.value == 4) ...[
                    const MoreScreen(),
                  ],
                  SizedBox(
                    height: 7.h,
                    width: 100.w,
                    child: Row(
                      children: List.generate(
                        iconList.length,
                        (index) {
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.selectBottomBar(index);
                                },
                                child: Container(
                                  height: 7.h,
                                  width: 19.6.w,
                                  color: controller.selectedIndex.value == index
                                      ? const Color.fromRGBO(54, 130, 54, 1)
                                      : const Color.fromRGBO(255, 255, 255, 1),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        iconList[index],
                                        height: 2.5.h,
                                        width: 2.5.h,
                                        color: controller.selectedIndex.value ==
                                                index
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      SizedBox(
                                        height: 0.5.h,
                                      ),
                                      Text(
                                        textList[index],
                                        style: TextStyle(
                                            color: controller
                                                        .selectedIndex.value ==
                                                    index
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 13.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                width: 0.3.w,
                                color: Colors.grey,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
