import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    _tabController!.addListener(() {
      _handleTabSelection();
    });
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
     child:Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text('Notification',style: TextStyle(fontFamily: "Imprima",fontSize: 18.sp),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DefaultTabController(
              length: 2,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabBar(
                     onTap: (int index) {
                        setState(() {
                          _tabController!.index = index;
                        });
                      },
                      controller: _tabController,
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.black,
                      labelStyle:  TextStyle(fontSize: 16.sp,),
                      tabs: const [
                        Tab(
                          text: "ALL",
                        ),
                        Tab(
                          text: "OFFER",
                        ),
                      ],
                  ),
                  Container(
                    height: 14.5.h,
                    decoration:  BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey, width: 0.3.w,))),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        tabNotificationWidget(),
                        tabNotificationWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tabNotificationWidget() {
    return Column(
      children: [
        SizedBox(height:1.h),
        SizedBox(
          height: 13.h,
          width:96.w,
          child: Card(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 0.5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetUtilities.discount,
                    height:5.h,
                    width: 5.h,
                  ),
                   SizedBox(
                    width: 3.w,
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          'Discount unlocked',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
                        ),
                         Flexible(
                          child: Text(
                            'You’ve got a 100% discount! This special offer expires soon.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 14.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 55.w),
                          child: Text(
                            '28 mins ago',
                            style: TextStyle(fontSize: 13.sp),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
