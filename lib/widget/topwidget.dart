import 'package:dream_11_app/controller/homePageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../utility/assets/images.dart';

class TopWidget extends StatefulWidget {
  HomePageController controller;
  TopWidget({super.key, required this.controller});

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  List imageList = [
    AssetUtilities.top1,
    AssetUtilities.top2,
    AssetUtilities.top3,
    AssetUtilities.top4,
    AssetUtilities.top5,
    AssetUtilities.top6,
    AssetUtilities.top7,
    AssetUtilities.top8,
    AssetUtilities.top9,
  ];
  List lst = [
    'Cricket',
    'Kabaddi',
    'Basketball',
    'Football',
    'vollebal',
    'handball',
    'Hocky',
    'Live Scrore',
    'Baseball'
  ];
  @override
  Widget build(BuildContext context) {
    return Obx((() => Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: List.generate(imageList.length, (index) {
                return GestureDetector(
                  onTap: () {
                    widget.controller.selectTop(index);
                  },
                  child: Column(
                    children: [
                      Container(
                        height:5.h,
                        width: 5.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    widget.controller.selectedTopIndex == index
                                        ? AssetUtilities.back1
                                        : AssetUtilities.back2))),
                        child: Center(
                            child: Image.asset(
                          imageList[index],
                          height: 2.5.h,
                          width: 2.5.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 1.5.w),
                        child: Container(
                          height: 5.h,
                          width:  18.w,
                           decoration: BoxDecoration(
                              image: DecorationImage(
                                   image: AssetImage(
                                      widget.controller.selectedTopIndex == index
                                          ? AssetUtilities.back3
                                          : AssetUtilities.back4))),
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.only(bottom: 0.5.h,right: 1.w),
                              child: Text(
                                lst[index],
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        )
      ),
    );
  }
}
