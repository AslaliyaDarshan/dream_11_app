import 'package:dream_11_app/src/onboarding_screen/onboarding_screen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoOnBoardingScreen();
    super.initState();
  }

  gotoOnBoardingScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(OnBoardingScreen());
    });
  }

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
          Center(
            child: Image.asset(
              AssetUtilities.cricketSwitchLogo,
              height:50.h,
              width: 90.w,
            ),
          ),
        ],
      ),
    );
  }
}
