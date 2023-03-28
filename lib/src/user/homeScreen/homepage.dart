// ignore_for_file: unrelated_type_equality_checks, must_be_immutable

import 'package:dream_11_app/controller/homePageController.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/matchView.dart';
import 'package:dream_11_app/widget/topwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class HomePage extends StatefulWidget {
  HomePageController controller;
  HomePage({super.key, required this.controller});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected1 = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 2.h,
            ),
            TopWidget(controller: widget.controller),
            SizedBox(
              height: 0.5.h,
            ),
            Stack(
              children: [
                Image.asset(AssetUtilities.bg),
                Column(
                  children: [
                     SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Text(
                            'My Matches',
                            style: TextStyle(color: Colors.white, fontSize: 15.sp),
                          ),
                          Spacer(),
                          Text(
                            'View All',
                            style: TextStyle(color: Colors.white, fontSize: 15.sp),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 16.sp,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: MyMatches_view(),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 0.50.h),
            CarouselSlider(
              items: [
                Container(height:7.h,width: 80.w,child: ClipRRect(borderRadius: BorderRadius.circular(15.sp),child: Image.asset(AssetUtilities.ads1,fit: BoxFit.fill,))),
                Container(height:7.h,width: 80.w,child: ClipRRect(borderRadius: BorderRadius.circular(15.sp),child: Image.asset(AssetUtilities.ads2,fit: BoxFit.fill,))),
              ],
              options:  CarouselOptions(
                height:7.5.h,
                autoPlay: true,
                viewportFraction: 0.8,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 3.w,bottom: 0.5.h,top: 0.5.h),
              child: Text('Upcoming Matches',style: TextStyle(fontSize: 15.sp),),
            ),
            ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 3.w),child: megacontest_view(),),
                  SizedBox(height: 1.h,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 3.w),child: MatchView(
                    isSelected: isSelected1,
                  ),),
                  SizedBox(height: 1.h,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 3.w),child: MatchView(
                    isSelected: isSelected1,
                  ),),
                  SizedBox(height: 1.h,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 3.w),child: MatchView(
                    isSelected: isSelected1,
                  ),),
                  SizedBox(height: 1.h,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 3.w),child: MatchView(
                    isSelected: isSelected1,
                  ),),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
