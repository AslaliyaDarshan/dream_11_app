import 'package:dream_11_app/controller/joinContestController.dart';
import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/homeScreen/createContestScreen.dart';
import 'package:dream_11_app/src/user/homeScreen/myContestScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:dream_11_app/widget/joinContextWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JoinContextScreen extends StatefulWidget {
  const JoinContextScreen({super.key});

  @override
  State<JoinContextScreen> createState() => _JoinContextScreenState();
}

class _JoinContextScreenState extends State<JoinContextScreen>
    with TickerProviderStateMixin {
  bool isSwitchActive1 = false;
  bool isSwitchActive2 = false;
  late TabController _tabController;
  JoinContestController cnt = Get.put(JoinContestController());

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.animateTo(0);
  }

  int selectedBottomBarIndex = 0;

  selectBottomBar(int index) {
    selectedBottomBarIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 6.h, right: 2.w),
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(34, 80, 34, 1),
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) {return MyContextScreen();}));
          },
          child: Image.asset(
            AssetUtilities.person1,
            height: 3.5.h,
            width: 3.5.h,
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(220, 220, 220, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Pk Vs Ind',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Imprima"),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '2h:56m left',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Imprima"),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const NotificationSettingScreen());
              },
              icon: Icon(Icons.notification_add_sharp, size: 20.sp)),
          IconButton(
            onPressed: () {
              Get.to(const MyAccountScreen());
            },
            icon: Icon(Icons.account_balance_wallet_sharp, size: 20.sp),
          ),
        ],
        bottom: TabBar(
          onTap: (value) {
            value == 1
                ? sheet()
                : value == 2
                    ? sheet()
                    : value == 3
                        ? sheet()
                        : null;
          },
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              child: Text(
                'Full Match',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    fontFamily: "Imprima"),
              ),
            ),
            Tab(
              child: Text(
                'Batting',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    fontFamily: "Imprima"),
              ),
            ),
            Tab(
              child: Text(
                'Bowling',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    fontFamily: "Imprima"),
              ),
            ),
            Tab(
              child: Text(
                'Reverse',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    fontFamily: "Imprima"),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 76.h,
            child: TabBarView(
              controller: _tabController,
              physics: const BouncingScrollPhysics(),
              dragStartBehavior: DragStartBehavior.down,
              children: selectedBottomBarIndex == 1
                  ? [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'You haven’s joined any upcoming contests',
                              style: TextStyle(
                                  fontSize: 16.sp, fontFamily: "Imprima"),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Image.asset(
                              AssetUtilities.stump,
                              height: 15.h,
                              width: 15.h,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Join Contests for any of the upcoming matches',
                              style: TextStyle(
                                  fontSize: 14.sp, fontFamily: "Imprima"),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: innerShadowButtonWidget(
                                  'Join A Contest', context,
                                  textStyle: TextStyle(
                                      fontSize: 15.sp, color: Colors.white),
                                  radius: 10.sp,
                                  width: 50.w),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'You haven’s joined any upcoming contests',
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Image.asset(
                              AssetUtilities.stump,
                              height: 15.h,
                              width: 15.h,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Join Contests for any of the upcoming matches',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: innerShadowButtonWidget(
                                  'Join A Contest', context,
                                  textStyle: TextStyle(
                                      fontSize: 15.sp, color: Colors.white),
                                  radius: 10.sp,
                                  width: 50.w),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'You haven’s joined any upcoming contests',
                              style: TextStyle(
                                  fontSize: 16.sp, fontFamily: "Imprima"),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Image.asset(
                              AssetUtilities.stump,
                              height: 15.h,
                              width: 15.h,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Join Contests for any of the upcoming matches',
                              style: TextStyle(
                                  fontSize: 14.sp, fontFamily: "Imprima"),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: innerShadowButtonWidget(
                                  'Join A Contest', context,
                                  textStyle: TextStyle(
                                      fontSize: 15.sp, color: Colors.white),
                                  radius: 10.sp,
                                  width: 50.w),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'You haven’s joined any upcoming contests',
                              style: TextStyle(
                                  fontSize: 16.sp, fontFamily: "Imprima"),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Image.asset(
                              AssetUtilities.stump,
                              height: 15.h,
                              width: 15.h,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Join Contests for any of the upcoming matches',
                              style: TextStyle(
                                  fontSize: 14.sp, fontFamily: "Imprima"),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: innerShadowButtonWidget(
                                  'Join A Contest', context,
                                  textStyle: TextStyle(
                                      fontSize: 15.sp, color: Colors.white),
                                  radius: 10.sp,
                                  width: 50.w),
                            ),
                          ],
                        ),
                      ),
                    ]
                  : selectedBottomBarIndex == 2
                      ? [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.w),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 1.h,
                                ),
                                Container(
                                  height: 2.5.h,
                                  width: 100.w,
                                  color: const Color.fromRGBO(161, 217, 161, 1),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      CircleAvatar(
                                        backgroundColor:
                                            const Color.fromRGBO(144, 78, 0, 1),
                                        radius: 10.sp,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Text(
                                        '2 Players not announced im lineup',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                144, 78, 0, 1),
                                            fontSize: 13.sp,
                                            fontFamily: "Imprima"),
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
                                          BorderRadius.circular(15.sp)),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 19.5.h,
                                        width: 100.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15.sp),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                  AssetUtilities.teambg,
                                                ),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 3.6.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.46),
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                          top: Radius.circular(
                                                              15.sp))),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 4.w),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Team 1',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14.sp,
                                                          fontFamily:
                                                              "Imprima"),
                                                    ),
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
                                                        Icons
                                                            .remove_red_eye_outlined,
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
                                                SizedBox(
                                                  width: 4.w,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'IND',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.white,
                                                          fontSize: 16.sp),
                                                    ),
                                                    Text(
                                                      '7',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.white,
                                                          fontSize: 16.sp),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 4.w,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'NZ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.white,
                                                          fontSize: 16.sp),
                                                    ),
                                                    Text(
                                                      '4',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.white,
                                                          fontSize: 16.sp),
                                                    ),
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
                                                    Container(
                                                      height: 2.5.h,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style:
                                                            const ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStatePropertyAll(
                                                                  Colors.black),
                                                        ),
                                                        child: Text(
                                                          "V kohli",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 13.sp),
                                                        ),
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
                                                    Container(
                                                      height: 2.5.h,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style:
                                                            const ButtonStyle(
                                                          backgroundColor:
                                                              MaterialStatePropertyAll(
                                                                  Colors.red),
                                                        ),
                                                        child: Text(
                                                          "S Yadav",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 13.sp),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                          bottom:
                                                              Radius.circular(
                                                                  13.sp))),
                                              // height: 26,
                                              padding: EdgeInsets.only(
                                                  top: 0.7.h,
                                                  bottom: 0.7.h,
                                                  left: 2.w,
                                                  right: 2.w),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'WK(1)',
                                                    style: TextStyle(
                                                        color: const Color
                                                                .fromRGBO(
                                                            147, 144, 144, 1),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'BAT(4)',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            147, 144, 144, 1),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'AR(2)',
                                                    style: TextStyle(
                                                        color: const Color
                                                                .fromRGBO(
                                                            147, 144, 144, 1),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'BOWL(4)',
                                                    style: TextStyle(
                                                        color: const Color
                                                                .fromRGBO(
                                                            147, 144, 144, 1),
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          const Color.fromRGBO(54, 130, 54, 1)),
                                  child: Center(
                                    child: Text(
                                      'Create Team 2',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Imprima"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'You haven’s created a team yet!',
                                  style: TextStyle(
                                      fontSize: 16.sp, fontFamily: "Imprima"),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Image.asset(
                                  AssetUtilities.stump,
                                  height: 15.h,
                                  width: 15.h,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  'Join Contests for any of the upcoming matches',
                                  style: TextStyle(
                                      fontSize: 14.sp, fontFamily: "Imprima"),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: innerShadowButtonWidget(
                                      'Create A Team', context,
                                      textStyle: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                      radius: 10.sp,
                                      width: 50.w),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'You haven’s created a team yet!',
                                  style: TextStyle(
                                      fontSize: 16.sp, fontFamily: "Imprima"),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Image.asset(
                                  AssetUtilities.stump,
                                  height: 15.h,
                                  width: 15.h,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  'Join Contests for any of the upcoming matches',
                                  style: TextStyle(
                                      fontSize: 14.sp, fontFamily: "Imprima"),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: innerShadowButtonWidget(
                                      'Create A Team', context,
                                      textStyle: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                      radius: 10.sp,
                                      width: 50.w),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'You haven’s created a team yet!',
                                  style: TextStyle(
                                      fontSize: 16.sp, fontFamily: "Imprima"),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Image.asset(
                                  AssetUtilities.stump,
                                  height: 15.h,
                                  width: 15.h,
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  'Join Contests for any of the upcoming matches',
                                  style: TextStyle(
                                      fontSize: 14.sp, fontFamily: "Imprima"),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: innerShadowButtonWidget(
                                      'Create A Team', context,
                                      textStyle: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                      radius: 10.sp,
                                      width: 50.w),
                                ),
                              ],
                            ),
                          ),
                        ]
                      : [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.w),
                                child: Row(
                                  children: [
                                    Text(
                                      'Sort by',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color:
                                              Color.fromRGBO(131, 129, 129, 1),
                                          fontFamily: "Imprima"),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(MyContextScreen());
                                      },
                                      child: Container(
                                        height: 2.8.h,
                                        padding: EdgeInsets.only(
                                            top: 0.5.h,
                                            bottom: 0.5.h,
                                            right: 4.w,
                                            left: 4.w),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8.sp)),
                                        child: Center(
                                          child: Text(
                                            'Entry',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    166, 160, 160, 1),
                                                fontSize: 14.sp,
                                                fontFamily: "Imprima"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(MyContextScreen());
                                      },
                                      child: Container(
                                        height: 2.8.h,
                                        padding: EdgeInsets.only(
                                            top: 0.5.h,
                                            bottom: 0.5.h,
                                            right: 4.w,
                                            left: 4.w),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8.sp)),
                                        child: Center(
                                          child: Text(
                                            'Contest Size',
                                            style: TextStyle(
                                                color: const Color.fromRGBO(
                                                    166, 160, 160, 1),
                                                fontSize: 14.sp,
                                                fontFamily: "Imprima"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    ElevatedButton.icon(
                                      style: const ButtonStyle(
                                        elevation: MaterialStatePropertyAll(0),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                          Color.fromRGBO(220, 220, 220, 1),
                                        ),
                                      ),
                                      onPressed: () {
                                        filterSheet();
                                      },
                                      icon: Icon(
                                        Icons.filter_alt,
                                        size: 18.sp,
                                        color: const Color.fromRGBO(
                                            110, 105, 105, 1),
                                      ),
                                      label: Text(
                                        'All Filters',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                166, 160, 160, 1),
                                            fontSize: 15.sp,
                                            fontFamily: "Imprima"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 0.2.h,
                                color: Colors.black,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 8,
                                  shrinkWrap: true,
                                  itemBuilder: ((context, index) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.w, top: 0.5.h),
                                          child: Text(
                                            'Mega Contest',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontFamily: "Imprima"),
                                          ),
                                        ),
                                        const JoinContextWidget()
                                      ],
                                    );
                                  }),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Center(
                                /*6355519217*/
                                child: Text(
                                  'OR',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(const CreateContestScreen());
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) {return CreateContestScreen();}));
                                  },
                                  child: Container(
                                    height: 4.5.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(13.sp)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Image.asset(
                                          AssetUtilities.plusround,
                                          height: 3.h,
                                          width: 3.h,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          'Create & Join Contest',
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.w),
                                child: Row(
                                  children: [
                                    Text(
                                      'Sort by',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: const Color.fromRGBO(
                                              131, 129, 129, 1),
                                          fontFamily: "Imprima"),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Container(
                                      height: 2.8.h,
                                      padding: EdgeInsets.only(
                                          top: 0.5.h,
                                          bottom: 0.5.h,
                                          right: 4.w,
                                          left: 4.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.sp)),
                                      child: Center(
                                        child: Text(
                                          'Entry',
                                          style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  166, 160, 160, 1),
                                              fontSize: 14.sp,
                                              fontFamily: "Imprima"),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Container(
                                      height: 2.8.h,
                                      padding: EdgeInsets.only(
                                          top: 0.5.h,
                                          bottom: 0.5.h,
                                          right: 4.w,
                                          left: 4.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.sp)),
                                      child: Center(
                                        child: Text(
                                          'Contest Size',
                                          style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  166, 160, 160, 1),
                                              fontSize: 14.sp,
                                              fontFamily: "Imprima"),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    ElevatedButton.icon(
                                      style: const ButtonStyle(
                                        elevation: MaterialStatePropertyAll(0),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                          Color.fromRGBO(220, 220, 220, 1),
                                        ),
                                      ),
                                      onPressed: () {
                                        filterSheet();
                                      },
                                      icon: Icon(
                                        Icons.filter_alt,
                                        size: 18.sp,
                                        color: const Color.fromRGBO(
                                            110, 105, 105, 1),
                                      ),
                                      label: Text(
                                        'All Filters',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                166, 160, 160, 1),
                                            fontSize: 15.sp,
                                            fontFamily: "Imprima"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 0.2.h,
                                color: Colors.black,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 8,
                                  shrinkWrap: true,
                                  itemBuilder: ((context, index) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.w, top: 0.5.h),
                                          child: Text(
                                            'Mega Contest',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontFamily: "Imprima"),
                                          ),
                                        ),
                                        const JoinContextWidget()
                                      ],
                                    );
                                  }),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Center(
                                child: Text(
                                  'OR',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(const CreateContestScreen());
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) {return CreateContestScreen();}));
                                  },
                                  child: Container(
                                    height: 4.5.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(13.sp),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Image.asset(
                                          AssetUtilities.plusround,
                                          height: 3.h,
                                          width: 3.h,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          'Create & Join Contest',
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.w),
                                child: Row(
                                  children: [
                                    Text(
                                      'Sort by',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: const Color.fromRGBO(
                                              131, 129, 129, 1),
                                          fontFamily: "Imprima"),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Container(
                                      height: 2.8.h,
                                      padding: EdgeInsets.only(
                                          top: 0.5.h,
                                          bottom: 0.5.h,
                                          right: 4.w,
                                          left: 4.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.sp)),
                                      child: Center(
                                        child: Text(
                                          'Entry',
                                          style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  166, 160, 160, 1),
                                              fontSize: 14.sp,
                                              fontFamily: "Imprima"),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Container(
                                      height: 2.8.h,
                                      padding: EdgeInsets.only(
                                          top: 0.5.h,
                                          bottom: 0.5.h,
                                          right: 4.w,
                                          left: 4.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.sp)),
                                      child: Center(
                                        child: Text(
                                          'Contest Size',
                                          style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  166, 160, 160, 1),
                                              fontSize: 14.sp,
                                              fontFamily: "Imprima"),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    ElevatedButton.icon(
                                      style: const ButtonStyle(
                                        elevation: MaterialStatePropertyAll(0),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                          Color.fromRGBO(220, 220, 220, 1),
                                        ),
                                      ),
                                      onPressed: () {
                                        filterSheet();
                                      },
                                      icon: Icon(
                                        Icons.filter_alt,
                                        size: 18.sp,
                                        color: const Color.fromRGBO(
                                            110, 105, 105, 1),
                                      ),
                                      label: Text(
                                        'All Filters',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                166, 160, 160, 1),
                                            fontSize: 15.sp,
                                            fontFamily: "Imprima"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 0.2.h,
                                color: Colors.black,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 8,
                                  shrinkWrap: true,
                                  itemBuilder: ((context, index) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.w, top: 0.5.h),
                                          child: Text(
                                            'Mega Contest',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontFamily: "Imprima"),
                                          ),
                                        ),
                                        const JoinContextWidget()
                                      ],
                                    );
                                  }),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Center(
                                child: Text(
                                  'OR',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(const CreateContestScreen());
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) {return CreateContestScreen();}));
                                  },
                                  child: Container(
                                    height: 4.5.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(13.sp)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Image.asset(
                                          AssetUtilities.plusround,
                                          height: 3.h,
                                          width: 3.h,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          'Create & Join Contest',
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.w),
                                child: Row(
                                  children: [
                                    Text(
                                      'Sort by',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: const Color.fromRGBO(
                                              131, 129, 129, 1),
                                          fontFamily: "Imprima"),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Container(
                                      height: 2.8.h,
                                      padding: EdgeInsets.only(
                                          top: 0.5.h,
                                          bottom: 0.5.h,
                                          right: 4.w,
                                          left: 4.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.sp)),
                                      child: Center(
                                        child: Text(
                                          'Entry',
                                          style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  166, 160, 160, 1),
                                              fontSize: 14.sp,
                                              fontFamily: "Imprima"),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Container(
                                      height: 2.8.h,
                                      padding: EdgeInsets.only(
                                          top: 0.5.h,
                                          bottom: 0.5.h,
                                          right: 4.w,
                                          left: 4.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8.sp)),
                                      child: Center(
                                        child: Text(
                                          'Contest Size',
                                          style: TextStyle(
                                              color: const Color.fromRGBO(
                                                  166, 160, 160, 1),
                                              fontSize: 14.sp,
                                              fontFamily: "Imprima"),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    ElevatedButton.icon(
                                      style: const ButtonStyle(
                                        elevation: MaterialStatePropertyAll(0),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                          Color.fromRGBO(220, 220, 220, 1),
                                        ),
                                      ),
                                      onPressed: () {
                                        filterSheet();
                                      },
                                      icon: Icon(
                                        Icons.filter_alt,
                                        size: 18.sp,
                                        color: const Color.fromRGBO(
                                            110, 105, 105, 1),
                                      ),
                                      label: Text(
                                        'All Filters',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                166, 160, 160, 1),
                                            fontSize: 15.sp,
                                            fontFamily: "Imprima"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 0.2.h,
                                color: Colors.black,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 8,
                                  shrinkWrap: true,
                                  itemBuilder: ((context, index) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.w, top: 0.5.h),
                                          child: Text(
                                            'Mega Contest',
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontFamily: "Imprima"),
                                          ),
                                        ),
                                        const JoinContextWidget()
                                      ],
                                    );
                                  }),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Center(
                                child: Text(
                                  'OR',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(const CreateContestScreen());
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) {return CreateContestScreen();}));
                                  },
                                  child: Container(
                                    height: 4.5.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(13.sp)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Image.asset(
                                          AssetUtilities.plusround,
                                          height: 3.h,
                                          width: 3.h,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          'Create & Join Contest',
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                            ],
                          ),
                        ],
            ),
          ),
          const Spacer(),
          Container(
            height: 7.h,
            width: 100.w,
            color: Colors.white,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      selectBottomBar(0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.torpy,
                          height: 3.h,
                          width: 3.h,
                          color: selectedBottomBarIndex == 0
                              ? const Color.fromRGBO(0, 100, 0, 1)
                              : null,
                        ),
                        Text(
                          'Context',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: selectedBottomBarIndex == 0
                                  ? const Color.fromRGBO(0, 100, 0, 1)
                                  : Colors.black,
                              fontFamily: "Imprima"),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectBottomBar(1);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.torpy,
                          height: 3.h,
                          width: 3.h,
                          color: selectedBottomBarIndex == 1
                              ? const Color.fromRGBO(0, 100, 0, 1)
                              : null,
                        ),
                        Text('My Context(0)',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: selectedBottomBarIndex == 1
                                    ? const Color.fromRGBO(0, 100, 0, 1)
                                    : Colors.black,
                                fontFamily: "Imprima")),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectBottomBar(2);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.person1,
                          height: 3.h,
                          width: 3.h,
                          color: selectedBottomBarIndex == 2
                              ? const Color.fromRGBO(0, 100, 0, 1)
                              : Colors.black,
                        ),
                        Text(
                          'My Team(1)',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: selectedBottomBarIndex == 2
                                  ? const Color.fromRGBO(0, 100, 0, 1)
                                  : Colors.black,
                              fontFamily: "Imprima"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  sheet() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: backgroundWhiteClr,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: ListView.builder(
              controller: scrollController,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 5.h,
                      width: 100.w,
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: backgroundGreenClr,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Spacer(flex: 2),
                          _tabController.index == 1
                              ? text(
                                  "Batting Fantasy", 17.sp, backgroundWhiteClr)
                              : _tabController.index == 2
                                  ? text("Bowling Fantasy", 17.sp,
                                      backgroundWhiteClr)
                                  : _tabController.index == 3
                                      ? text("Reverse Fantasy", 17.sp,
                                          backgroundWhiteClr)
                                      : null,
                          const Spacer(flex: 1),
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: text("Close", 18.sp, backgroundWhiteClr),
                          )
                        ],
                      ),
                    ),
                    _tabController.index == 1
                        ? Image.asset(AssetUtilities.modelSheetBating)
                        : _tabController.index == 2
                            ? Image.asset(AssetUtilities.modelSheetReverse)
                            : _tabController.index == 3
                                ? Image.asset(AssetUtilities.modelSheetBowling)
                                : const SizedBox(),
                    height(2.h),
                    _tabController.index == 1
                        ? Image.asset(AssetUtilities.modelSheetBatingImg)
                        : _tabController.index == 2
                            ? Image.asset(AssetUtilities.modelSheetBowlingImg)
                            : _tabController.index == 3
                                ? Image.asset(
                                    AssetUtilities.modelSheetReverseImg)
                                : const SizedBox(),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  filterSheet() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: backgroundWhiteClr,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: ListView.builder(
              controller: scrollController,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 5.h,
                      width: 100.w,
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            splashRadius: 30,
                            iconSize: 23.sp,
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.close),
                          ),
                          text("Filters", 18.sp, Colors.black),
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: text("Clear", 18.sp, Colors.black54),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            height(1.h),
                            text("Entry", 17.sp, Colors.black),
                            height(2.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundTextButton("${rupee}1-${rupee}50"),
                                checkBox(
                                  cnt.oneTo50.value,
                                  (p0) {
                                    cnt.oneTo50.value = p0!;
                                  },
                                ),
                                roundTextButton("${rupee}51-${rupee}100"),
                                checkBox(
                                  cnt.fifty1To100.value,
                                  (p0) {
                                    cnt.fifty1To100.value = p0!;
                                  },
                                ),
                              ],
                            ),
                            height(1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundTextButton("${rupee}101-${rupee}1000"),
                                checkBox(
                                  cnt.one101To1000.value,
                                  (p0) {
                                    cnt.one101To1000.value = p0!;
                                  },
                                ),
                                roundTextButton(
                                    "${rupee}1000 to ${rupee}Above"),
                                checkBox(
                                  cnt.one1001ToAbove.value,
                                  (p0) {
                                    cnt.one1001ToAbove.value = p0!;
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    height(1.h),
                    line(),
                    height(1.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text("Contest Size", 17.sp, Colors.black),
                            height(2.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundTextButton("2"),
                                checkBox(
                                  cnt.two.value,
                                  (p0) {
                                    cnt.two.value = p0!;
                                  },
                                ),
                                roundTextButton("3"),
                                checkBox(
                                  cnt.three.value,
                                  (p0) {
                                    cnt.three.value = p0!;
                                  },
                                ),
                              ],
                            ),
                            height(1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundTextButton("4"),
                                checkBox(
                                  cnt.four.value,
                                  (p0) {
                                    cnt.four.value = p0!;
                                  },
                                ),
                                roundTextButton("5 to 10"),
                                checkBox(
                                  cnt.fiveTo10.value,
                                  (p0) {
                                    cnt.fiveTo10.value = p0!;
                                  },
                                ),
                              ],
                            ),
                            height(1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundTextButton("11 to 20"),
                                checkBox(
                                  cnt.elevenTo20.value,
                                  (p0) {
                                    cnt.elevenTo20.value = p0!;
                                  },
                                ),
                                roundTextButton("20 to 200"),
                                checkBox(
                                  cnt.twentyTo200.value,
                                  (p0) {
                                    cnt.twentyTo200.value = p0!;
                                  },
                                ),
                              ],
                            ),
                            height(1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundTextButton("201 to 1000"),
                                checkBox(
                                  cnt.two201To1000.value,
                                  (p0) {
                                    cnt.two201To1000.value = p0!;
                                  },
                                ),
                                roundTextButton("1001 to 10000"),
                                checkBox(
                                  cnt.one1001To10000.value,
                                  (p0) {
                                    cnt.one1001To10000.value = p0!;
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    height(1.h),
                    line(),
                    height(1.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text("Winnings", 17.sp, Colors.black),
                            height(2.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundTextButton("${rupee}1 to ${rupee}1000"),
                                checkBox(
                                  cnt.oneTo1000.value,
                                  (p0) {
                                    cnt.oneTo1000.value = p0!;
                                  },
                                ),
                                roundTextButton(
                                    "${rupee}1001 to ${rupee}50000"),
                                checkBox(
                                  cnt.one1001To50000.value,
                                  (p0) {
                                    cnt.one1001To50000.value = p0!;
                                  },
                                ),
                              ],
                            ),
                            height(1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundTextButton(
                                    "${rupee}50001 to ${rupee}1Lakh"),
                                checkBox(
                                  cnt.five50001To1Lakh.value,
                                  (p0) {
                                    cnt.five50001To1Lakh.value = p0!;
                                  },
                                ),
                                roundTextButton(
                                    "${rupee}1Lakh to ${rupee}Above"),
                                checkBox(
                                  cnt.oneLakhToAbove.value,
                                  (p0) {
                                    cnt.oneLakhToAbove.value = p0!;
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    height(1.h),
                    line(),
                    height(1.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Obx(
                        () => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text("Contest Type", 17.sp, Colors.black),
                            height(2.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundTextButton("Multi Entry"),
                                checkBox(
                                  cnt.multiEntry.value,
                                  (p0) {
                                    cnt.multiEntry.value = p0!;
                                  },
                                ),
                                roundTextButton("100% Bonus"),
                                checkBox(
                                  cnt.one100Bonus.value,
                                  (p0) {
                                    cnt.one100Bonus.value = p0!;
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    height(2.h),
                    Center(
                      child: SizedBox(
                        height: 5.h,
                        width: 33.w,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: text("Apply", 17.sp, backgroundWhiteClr),
                        ),
                      ),
                    ),
                    height(3.h),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  roundTextButton(String pStrTxt) {
    return Container(
      width: 35.w,
      padding: EdgeInsets.symmetric(vertical: 0.8.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.sp),
        border: Border.all(
          color: const Color(0xFF9CD85C),
        ),
      ),
      child: text(pStrTxt, 16.sp, Colors.black),
    );
  }

  checkBox(bool? value, void Function(bool?) onChanged) {
    return Transform.scale(
      scale: 1.3,
      child: Checkbox(
        value: value,
        onChanged: onChanged,
      ),
    );
  }

  line() {
    return const Divider(
      color: Colors.black,
      thickness: 2,
    );
  }
}
