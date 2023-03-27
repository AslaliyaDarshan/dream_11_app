// ignore_for_file: unrelated_type_equality_checks, must_be_immutable

import 'package:dream_11_app/controller/homePageController.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/matchView.dart';
import 'package:dream_11_app/widget/topwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Spacer(),
                          Text(
                            'View All',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: MatchView(),
                    ),
                  ],
                )
              ],
            ),
            // : SizedBox.shrink(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 9),
                child: Row(
                  children: [
                    Image.asset(
                      AssetUtilities.ads1,
                      height: 70,
                      width: 276,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      AssetUtilities.ads2,
                      height: 52,
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('Upcoming Matches'),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 13, top: 10),
                          child: MatchView(
                            isSelected: isSelected1,
                          )),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
