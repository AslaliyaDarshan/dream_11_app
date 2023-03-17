// ignore_for_file: prefer_const_literals_to_create_immutables, unrelated_type_equality_checks

import 'package:dream_11_app/controller/onBoardingController.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/loginScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/assets/srings.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';


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
    double  hsize = MediaQuery.of(context).size.height;
    double  wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: hsize*1,
            width: wsize*1,
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
                    height: hsize*0.4,
                    width: wsize*1,
                  ),
                ),
                AutoSizeText(
                  mainTextList[controller.index.value],
                  textAlign: TextAlign.center,
                  style:  TextStyle(fontSize: 18, fontWeight: FontWeight.w400,fontFamily:"Imprima"),
                ),
                SizedBox(
                  height: controller.index.value == 1 ? 0 : 10,
                ),
                controller.index.value == 1
                    ? const AutoSizeText(
                        Strings.secondTitleSubTitle,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400,fontFamily:"Imprima"),
                      )
                    : const SizedBox.shrink(),
                SizedBox(
                  height: controller.index.value == 1 ? 10 : 0,
                ),
                AutoSizeText(
                  subTextList[controller.index.value],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    fontFamily:"Imprima",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 31),
                controller.index == 4
                    ? GestureDetector(
                        onTap: () {
                          Get.offAll(LoginPage());
                          //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {return LoginPage();}), (route) => false);
                        },
                        child:innerShadowButtonWidget("Continue",context,width:0.6,height: 0.05))
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
