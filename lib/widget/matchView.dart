import 'package:dream_11_app/controller/homePageController.dart';
import 'package:dream_11_app/src/user/homeScreen/contestCompletedScreen.dart';
import 'package:dream_11_app/src/user/homeScreen/joinContestScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MatchView extends StatefulWidget {
  bool? isSelected;
  StateSetter? setState;
  MatchView({super.key, this.isSelected = false, this.setState});
  @override
  State<MatchView> createState() => _MatchViewState();
}

class _MatchViewState extends State<MatchView> {
  bool isSwitchActive1 = false;
  bool isSwitchActive2 = false;
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const ContestCompletedScreen());
        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const JoinContextScreen();}));
      },
      child: Container(
        height: 16.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.sp),
          border: Border.all(
            color: const Color.fromRGBO(39, 44, 86, 1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 1.6.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isDismissible: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(15.0.sp),
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
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(15.0.sp),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Get.back();
                                                //Navigator.pop(context);
                                              },
                                              icon: Icon(
                                                Icons.close,
                                                size: 20.sp,
                                              )),
                                          Text(
                                            'Set Reminders',
                                            style: TextStyle(fontSize: 14.sp),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 3.w, bottom: 1.h),
                                        child: Text(
                                          'Lineup Announcement (if available)',
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: const Color.fromRGBO(
                                                  04, 104, 104, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 4.w,
                                      top: 1.h,
                                      bottom: 0,
                                      right: 4.w),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Match - UAE-WU19 VS BA-WU19',
                                        style: TextStyle(fontSize: 14.sp),
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
                                        }),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 0.2.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 4.w, top: 0, bottom: 0, right: 4.w),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Tour - ICC Women’s U19 T20 World Cap',
                                        style: TextStyle(fontSize: 14.sp),
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
                                          })),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          });
                        },
                      );
                    },
                    child: Image.asset(
                      AssetUtilities.noty,
                      height: 2.h,
                      width: 2.h,
                    ),
                  ),
                  Text(
                    'SA T20 League 2023',
                    style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.isSelected == true) {
                        widget.isSelected = false;
                      } else if (widget.isSelected == false) {
                        widget.isSelected = true;
                      }
                      if (widget.setState != null) {
                        widget.setState!(() {});
                      }
                      setState(() {});
                    },
                    child: Image.asset(
                      widget.isSelected ?? false
                          ? AssetUtilities.selectedpin
                          : AssetUtilities.pin,
                      height: 2.h,
                      width: 2.h,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AssetUtilities.india,
                            height: 4.5.h,
                            width: 4.5.h,
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            'India',
                            style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        'IND',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    '1d 21th left',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,fontFamily: "Imprima"),
                  ),
                  Row(
                    children: [
                      Text(
                        'ENG',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            AssetUtilities.england,
                            height: 4.5.h,
                            width: 4.5.h,
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            'England',
                            style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 3.h,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(54, 130, 54, 1),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15.sp))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    Text(
                      'MEGA',
                      style: TextStyle(
                          color: const Color.fromRGBO(44, 255, 90, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      ' t1.5 Crores',
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 0, 0, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                    const Spacer(),
                    Image.asset(
                      AssetUtilities.tshirtno,
                      height: 2.h,
                      width: 2.h,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Lineups Out',
                      style: TextStyle(
                          color: const Color(0xFFD3D3D3),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyMatches_view extends StatefulWidget {
  bool? isSelected;
  StateSetter? setState;
  MyMatches_view({super.key, this.isSelected = false, this.setState});

  @override
  State<MyMatches_view> createState() => _MyMatches_viewState();
}

class _MyMatches_viewState extends State<MyMatches_view> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const JoinContextScreen());
        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const JoinContextScreen();}));
      },
      child: Container(
        height: 16.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.sp),
          border: Border.all(
            color: const Color.fromRGBO(39, 44, 86, 1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 1.6.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      AssetUtilities.noty,
                      height: 2.h,
                      width: 2.h,
                    ),
                  ),
                  Text(
                    'SA T20 League 2023',
                    style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.isSelected == true) {
                        widget.isSelected = false;
                      } else if (widget.isSelected == false) {
                        widget.isSelected = true;
                      }
                      if (widget.setState != null) {
                        widget.setState!(() {});
                      }
                      setState(() {});
                    },
                    child: Image.asset(
                      widget.isSelected ?? false
                          ? AssetUtilities.selectedpin
                          : AssetUtilities.pin,
                      height: 2.h,
                      width: 2.h,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AssetUtilities.india,
                            height: 4.5.h,
                            width: 4.5.h,
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            'India',
                            style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        'IND',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    'Winner Declared',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,fontFamily: "Imprima"),
                  ),
                  Row(
                    children: [
                      Text(
                        'ENG',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            AssetUtilities.england,
                            height: 4.5.h,
                            width: 4.5.h,
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            'England',
                            style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 3.h,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(54, 130, 54, 1),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.sp))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    Text(
                      '1 Team',
                      style: TextStyle(
                          color: const Color.fromRGBO(44, 255, 90, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      ' 0 Contest',
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 0, 0, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                    const Spacer(),
                    Text(
                      'YOU WON: ₹0  ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class megacontest_view extends StatefulWidget {
  bool? isSelected;
  StateSetter? setState;
  megacontest_view({super.key, this.isSelected = false, this.setState});

  @override
  State<megacontest_view> createState() => _megacontest_viewState();
}

class _megacontest_viewState extends State<megacontest_view> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const JoinContextScreen());
        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const JoinContextScreen();}));
      },
      child: Container(
        height: 16.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.sp),
          border: Border.all(
            color: const Color.fromRGBO(39, 44, 86, 1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 1.6.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      AssetUtilities.noty,
                      height: 2.h,
                      width: 2.h,
                    ),
                  ),
                  Text(
                    'SA T20 League 2023',
                    style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.isSelected == true) {
                        widget.isSelected = false;
                      } else if (widget.isSelected == false) {
                        widget.isSelected = true;
                      }
                      if (widget.setState != null) {
                        widget.setState!(() {});
                      }
                      setState(() {});
                    },
                    child: Image.asset(
                      widget.isSelected ?? false
                          ? AssetUtilities.selectedpin
                          : AssetUtilities.pin,
                      height: 2.h,
                      width: 2.h,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AssetUtilities.india,
                            height: 4.5.h,
                            width: 4.5.h,
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            'India',
                            style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        'IND',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children:[
                      Text(
                        '1d 21th left',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                            fontFamily: "Imprima"),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Container(
                        height: 3.5.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 5.sp),
                            borderRadius: BorderRadius.circular(20.sp)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              AssetUtilities.leaderboard,
                              height: 2.5.h,
                              width: 2.5.h,
                              fit: BoxFit.fill,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Leaderboard",
                                  style: TextStyle(
                                      color: Color(0xFF299641),
                                      fontSize: 12.sp,fontFamily: "Imprima"),
                                ),
                                Text("For Mega Contest",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 12.sp,fontFamily: "Imprima"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'ENG',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            AssetUtilities.england,
                            height: 4.5.h,
                            width: 4.5.h,
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            'England',
                            style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 3.h,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(54, 130, 54, 1),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.sp))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  children: [
                    Text(
                      'MEGA',
                      style: TextStyle(
                          color: const Color.fromRGBO(44, 255, 90, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      ' t1.5 Crores',
                      style: TextStyle(
                          color: const Color.fromRGBO(255, 0, 0, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                    const Spacer(),
                    Text(
                      "🎁",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      '100000',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Image.asset(
                      AssetUtilities.tshirt,
                      height: 2.h,
                      width: 2.h,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Lineups Out',
                      style: TextStyle(
                          color: Color(0xFF2CFF5A),
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,fontFamily: "Imprima"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
