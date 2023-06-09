import 'package:dream_11_app/src/user/homeScreen.dart';
import 'package:dream_11_app/widget/tabbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';



class VerificationDocumentScreen extends StatefulWidget {
  VerificationDocumentScreen({Key? key}) : super(key: key);

  @override
  State<VerificationDocumentScreen> createState() =>
      _VerificationDocumentScreenState();
}

class _VerificationDocumentScreenState extends State<VerificationDocumentScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 5);
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text(
          "KYC quick",
          style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima",),
        ),
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 5,
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TabBar(
                    isScrollable: true,
                    onTap: (int index) {
                      setState(() {
                        _tabController!.index = index;
                      });
                    },
                    controller: _tabController,
                    labelColor: Colors.green,
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle:  TextStyle(fontSize: 14.sp),
                    tabs: const [
                      Tab(
                        text: "Connect",
                      ),
                      Tab(
                        text: "Email",
                      ),
                      Tab(
                        text: "PAN",
                      ),
                      Tab(
                        text: "Add.Proof",
                      ),
                      Tab(
                        text: "Bank",
                      ),
                    ]),
                Row(
                  children: [
                    customeContainer(0, width: 21.w),
                    customeContainer(1, width: 18.w),
                    customeContainer(2, width: 18.w),
                    customeContainer(3, width: 21.w),
                    customeContainer(4, width: 20.w)
                  ],
                ),
                Container(
                  height: 83.h,
                  decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
                  child: TabBarView(controller: _tabController,
                      children: [
                    TabBarWidget(onTap:  () {
                      _tabController!.animateTo(1);
                    }),
                    TabBarWidget2(onTap: () {
                      _tabController!.animateTo(2);
                    }),
                    TabBarWidget3(onTap: () {
                      _tabController!.animateTo(3);
                    }),
                    TabBarWidget4(onTap: () {
                      _tabController!.animateTo(4);
                    }),
                    TabBarWidget5(onTap: () {
                      Get.off(HomeScreen());
                      //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {return const HomeScreen();}), (route) => false);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container customeContainer(int index, {double? width}) {
    return Container(
      height: 0.3.h,
      width: width ?? 20.w,
      color: _tabController!.index == index ? Colors.green : Colors.black,
    );
  }
}
