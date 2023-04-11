// ignore_for_file: prefer_const_literals_to_create_immutables, unrelated_type_equality_checks

import 'package:dream_11_app/controller/onBoardingController.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/loginScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/assets/string.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<String> imageList = [
    AssetUtilities.cricket,
    AssetUtilities.cricket1,
    AssetUtilities.cricket2,
    AssetUtilities.cricket3,
    AssetUtilities.cricket4,
  ];
  List<String> mainTextList = [
    Strings.firstTitle,
    Strings.secondTitle,
    Strings.thirdTitle,
    Strings.fourthTitle,
    Strings.fifthTitle
  ];
  List<String> subTextList = [
    Strings.firstSubTitleText,
    Strings.secondSubTitleText,
    Strings.thirdSubTitle,
    Strings.fourthSubTitle,
    Strings.fifthSubTitle
  ];

  // int index =0;
  final OnBoardingController controller = Get.put(OnBoardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height:100.h,
            width: 100.w,
            child: Image.asset(
              AssetUtilities.onBoardingBackGroundImage,
              fit: BoxFit.cover,
            ),
          ),
          Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    imageList[controller.index.value],
                    height: 40.h,
                    width: 100.w,
                  ),
                ),
                Text(
                  mainTextList[controller.index.value],
                  textAlign: TextAlign.center,
                  style:  TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400,fontFamily:"Imprima"),
                ),
                SizedBox(
                  height: controller.index.value == 1 ? 0 : 10,
                ),
                controller.index.value == 1
                    ?  Text(
                        Strings.secondTitleSubTitle,
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w400,fontFamily:"Imprima"),
                      )
                    : const SizedBox.shrink(),
                SizedBox(
                  height: controller.index.value == 1 ? 2.h : 0.h,
                ),
                Text(
                  subTextList[controller.index.value],
                  textAlign: TextAlign.center,
                  style:  TextStyle(
                    fontSize: 14.sp,
                    fontFamily:"Imprima",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                 SizedBox(height: 4.h),
                controller.index == 4
                    ? GestureDetector(
                        onTap: () {
                          Get.offAll(LoginPage());
                          //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {return LoginPage();}), (route) => false);
                        },
                        child:innerShadowButtonWidget("Continue",context,width:60.w,height:4.h))
                    : const SizedBox.shrink()
              ],
            ),
          ),
          Obx(
            () => controller.index == 4
                ? const SizedBox.shrink()
                : buttonWidget(() {
                    controller.incrementIndex();
                  }, context),
          ),
        ],
      ),
    );
  }
}
