import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/homeScreen/createContextScreen.dart';
import 'package:dream_11_app/src/user/homeScreen/myContextScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.animateTo(2);
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
        padding:  EdgeInsets.only(bottom: 6.h, right: 2.w),
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(34, 80, 34, 1),
          onPressed: () {
            Get.to(MyContextScreen());
            //Navigator.push(context, MaterialPageRoute(builder: (context) {return MyContextScreen();}));
          },
          child: Image.asset(
            AssetUtilities.person1,
            height:3.5.h,
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
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '2h:56m left',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(NotificationSettingScreen());
              },
              icon:  Icon(Icons.notification_add_sharp,size: 20.sp)),
          IconButton(
              onPressed: () {
                Get.to(MyAccountScreen());
              },
              icon:  Icon(Icons.account_balance_wallet_sharp,size: 20.sp)),
        ],
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs:  [
            Tab(
              child: Text(
                'Full Match',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
              ),
            ),
            Tab(
              child: Text(
                'Batting',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
              ),
            ),
            Tab(
              child: Text(
                'Bowling',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp ),
              ),
            ),
            Tab(
              child: Text(
                'Reverse',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.sp),
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
              children: selectedBottomBarIndex == 1 ? [
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
                              height:15.h ,
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
                              onTap:() {

                              },
                              child: innerShadowButtonWidget('Join A Contest', context, textStyle:  TextStyle(fontSize: 15.sp, color: Colors.white), radius: 10.sp, width: 50.w),
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
                              height:15.h ,
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
                              onTap:() {

                              },
                              child: innerShadowButtonWidget('Join A Contest', context, textStyle:  TextStyle(fontSize: 15.sp, color: Colors.white), radius: 10.sp, width: 50.w),
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
                              height:15.h ,
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
                              onTap:() {

                              },
                              child: innerShadowButtonWidget('Join A Contest', context, textStyle:  TextStyle(fontSize: 15.sp, color: Colors.white), radius: 10.sp, width: 50.w),
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
                              height:15.h ,
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
                              onTap:() {

                              },
                              child: innerShadowButtonWidget('Join A Contest', context, textStyle:  TextStyle(fontSize: 15.sp, color: Colors.white), radius: 10.sp, width: 50.w),
                            ),
                          ],
                        ),
                      ),
                    ]
                  : selectedBottomBarIndex == 2 ? [
                          Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 2.w),
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
                                    children:  [
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color.fromRGBO(144, 78, 0, 1),
                                        radius: 10.sp,
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Text(
                                        '2 Players not announced im lineup',
                                        style: TextStyle(
                                            color: Color.fromRGBO(144, 78, 0, 1),
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
                                            borderRadius:BorderRadius.circular(15.sp),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                  AssetUtilities.teambg,
                                                ),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 3.6.h,
                                              width: 100.w,
                                              decoration:  BoxDecoration(
                                                  color: Color.fromRGBO(0, 0, 0, 0.46),
                                                  borderRadius: BorderRadius.vertical(
                                                          top: Radius.circular(15.sp))),
                                              child: Padding(
                                                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                                child: Row(
                                                  children: [
                                                     Text(
                                                      'Team 1',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14.sp),
                                                    ),
                                                    const Spacer(),
                                                    GestureDetector(
                                                      onTap: () {},
                                                      child:  Icon(
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
                                                      child:  Icon(
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
                                                      child:  Icon(
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
                                                 SizedBox(
                                                  width: 4.w,
                                                ),
                                                Column(
                                                  children:  [
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
                                                          fontWeight: FontWeight.w700,
                                                          color: Colors.white,
                                                          fontSize: 16.sp),
                                                    ),
                                                  ],
                                                ),
                                                 SizedBox(
                                                  width: 4.w,
                                                ),
                                                Column(
                                                  children:  [
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
                                                      width: 7.h ,
                                                      //fit: BoxFit.cover,
                                                    ),
                                                     Container(
                                                  height: 2.5.h,
                                                  child: ElevatedButton(onPressed: (){}, child: Text("V kohli",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 13.sp),),
                                                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black) ,),
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
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Image.asset(
                                                      AssetUtilities.suryo,
                                                      height: 7.h,
                                                      width: 7.h,
                                                      //fit: BoxFit.cover,
                                                    ),
                                                    Container(
                                                      height: 2.5.h,
                                                      child: ElevatedButton(onPressed: (){}, child: Text("S Yadav",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 13.sp),),
                                                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red),),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration:  BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(13.sp))),
                                              // height: 26,
                                              padding:  EdgeInsets.only(top: 0.7.h, bottom: 0.7.h, left: 2.w, right: 2.w),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    'WK(1)',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(147, 144, 144, 1),
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'BAT(4)',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(147, 144, 144, 1),
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'AR(2)',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(147, 144, 144, 1),
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'BOWL(4)',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(147, 144, 144, 1),
                                                        fontSize: 15.sp,
                                                        fontWeight: FontWeight.w500),
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
                                      color: const Color.fromRGBO(54, 130, 54, 1)),
                                  child:  Center(
                                    child: Text(
                                      'Create Team 2',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500),
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
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Image.asset(
                        AssetUtilities.stump,
                        height:15.h ,
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
                        onTap:() {

                        },
                        child: innerShadowButtonWidget('Create A Team', context, textStyle:  TextStyle(fontSize: 15.sp, color: Colors.white), radius: 10.sp, width: 50.w),
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
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Image.asset(
                        AssetUtilities.stump,
                        height:15.h ,
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
                        onTap:() {

                        },
                        child: innerShadowButtonWidget('Create A Team', context, textStyle:  TextStyle(fontSize: 15.sp, color: Colors.white), radius: 10.sp, width: 50.w),
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
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Image.asset(
                        AssetUtilities.stump,
                        height:15.h ,
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
                        onTap:() {

                        },
                        child: innerShadowButtonWidget('Create A Team', context, textStyle:  TextStyle(fontSize: 15.sp, color: Colors.white), radius: 10.sp, width: 50.w),
                      ),
                    ],
                  ),
                ),]
                      : [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1.h),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                child: Row(
                                  children: [
                                     Text(
                                      'Sort by',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color.fromRGBO(131, 129, 129, 1)),
                                    ),
                                     SizedBox(
                                      width: 2.w,
                                    ),
                                    Container(
                                      height: 2.8.h,
                                      padding:  EdgeInsets.only(top: 0.5.h, bottom: 0.5.h, right: 4.w, left: 4.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(8.sp)),
                                      child:  Center(
                                        child: Text(
                                          'Entry',
                                          style: TextStyle(
                                              color: Color.fromRGBO(166, 160, 160, 1),
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                    ),
                                     SizedBox(
                                      width: 3.w,
                                    ),
                                    Container(
                                      height: 2.8.h,
                                      padding:  EdgeInsets.only(top: 0.5.h, bottom: 0.5.h, right: 4.w, left: 4.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(8.sp)),
                                      child:  Center(
                                        child: Text(
                                          'Contest Size',
                                          style: TextStyle(
                                              color: Color.fromRGBO(166, 160, 160, 1),
                                              fontSize: 14.sp),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                     Icon(
                                      Icons.filter_alt,
                                      size: 18.sp,
                                      color: Color.fromRGBO(110, 105, 105, 1),
                                    ),
                                     Text(
                                      'All Filters',
                                      style: TextStyle(
                                          color: Color.fromRGBO(166, 160, 160, 1),
                                          fontSize: 15.sp),
                                    )
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.w, top: 0.5.h),
                                          child: Text(
                                            'Mega Contest',
                                            style: TextStyle(fontSize: 16.sp),
                                          ),
                                        ),
                                        JoinContextWidget()
                                      ],
                                    );
                                  }
                                  ),
                                ),
                              ),
                               SizedBox(
                                height: 1.h,
                              ),
                              const Center(
                                child: Text(
                                  'Or',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {return CreateContextScreen();}));
                                  },
                                  child: Container(
                                    height: 41,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Image.asset(
                                          AssetUtilities.plusround,
                                          height: 24,
                                          width: 24,
                                        ),
                                        const SizedBox(
                                          width: 28,
                                        ),
                                        const Text(
                                          'Create & Join Contest',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const Text('Hello2'),
                          const Text('Hello3'),
                          const Text('Hello4'),
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
                          width:  3.h,
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
                          ),
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
                            )),
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
                        Text('My Team(1)',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: selectedBottomBarIndex == 2
                                  ? const Color.fromRGBO(0, 100, 0, 1)
                                  : Colors.black,
                            )),
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
}
