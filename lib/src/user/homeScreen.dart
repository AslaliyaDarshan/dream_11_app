// ignore_for_file: depend_on_referenced_packages

import 'dart:ui';
import 'package:dream_11_app/src/user/homeScreen/contextPage.dart';
import 'package:dream_11_app/src/user/homeScreen/homepage.dart';
import 'package:dream_11_app/src/user/homeScreen/rewardScreen.dart';
import 'package:dream_11_app/src/user/homeScreen/winnerScreen.dart';
import 'package:get/get.dart';
import 'package:dream_11_app/controller/homePageController.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';

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
  bool isSwitchActive1 = false;
  bool isSwitchActive2 = false;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: controller.selectedIndex.value == 3
            ? null
            : AppBar(
                leading: controller.selectedIndex.value == 2
                    ? null
                    : IconButton(
                        icon: const Icon(Icons.menu_sharp),
                        onPressed: () {},
                      ),
                actions: [
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          isDismissible: false,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15.0),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                                builder: (context, StateSetter setState) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(15.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: const Icon(Icons.close)),
                                            const Spacer(),
                                            const Text(
                                              'Set Reminders',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            const Spacer()
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 15.0, bottom: 10),
                                          child: Text(
                                            'Lineup Announcement (if available)',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromRGBO(
                                                    104, 104, 104, 1)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16.0, top: 10, bottom: 0),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Match - UAE-WU19 VS BA-WU19',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        const Spacer(),
                                        Switch(
                                            inactiveThumbColor:
                                                const Color.fromRGBO(
                                                    134, 128, 128, 1),
                                            value: isSwitchActive1,
                                            onChanged: ((value) {
                                              isSwitchActive1 = value;
                                              setState(() {});
                                            }))
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.grey,
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16.0, top: 0, bottom: 0),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Tour - ICC Women’s U19 T20 World Cap',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        const Spacer(),
                                        Switch(
                                            inactiveThumbColor:
                                                const Color.fromRGBO(
                                                    134, 128, 128, 1),
                                            value: isSwitchActive2,
                                            onChanged: ((value) {
                                              isSwitchActive2 = value;
                                              setState(() {});
                                            }))
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            });
                          },
                        );
                      },
                      icon: const Icon(Icons.notification_add_sharp)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.account_balance_wallet_sharp)),
                ],
                backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
                title: Text(
                  controller.selectedIndex.value == 2
                      ? 'Bonus Rewards '
                      : "Home",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
        body: Obx((() => Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (controller.selectedIndex.value == 0)
                  HomePage(controller: controller),
                if (controller.selectedIndex.value == 1) ...[
                  ContextScreen(controller: controller),
                  const Spacer(),
                ],
                if (controller.selectedIndex.value == 2) ...[
                  const RewardScreen(),
                ],
                if (controller.selectedIndex.value == 3) ...[
                  const WinnerScreen(),
                ],
                if (controller.selectedIndex.value == 4) ...[
                  const Spacer(),
                ],
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: List.generate(iconList.length, (index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.selectBottomBar(index);
                            },
                            child: Container(
                              height: 57,
                              width: MediaQuery.of(context).size.width / 5.09,
                              color: controller.selectedIndex.value == index
                                  ? const Color.fromRGBO(54, 130, 54, 1)
                                  : const Color.fromRGBO(255, 255, 255, 1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    iconList[index],
                                    height: 20,
                                    width: 18.29,
                                    color:
                                        controller.selectedIndex.value == index
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    textList[index],
                                    style: TextStyle(
                                        color: controller.selectedIndex.value ==
                                                index
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 11),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const VerticalDivider(
                            width: 1.2,
                            color: Colors.grey,
                          )
                        ],
                      );
                    }),
                  ),
                ),
              ],
            )))));
  }
}
