// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dream_11_app/src/onboarding_screen/loginScreen/loginScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TermConditionScreen extends StatefulWidget {
  const TermConditionScreen({super.key});

  @override
  State<TermConditionScreen> createState() => _TermConditionScreenState();
}

class _TermConditionScreenState extends State<TermConditionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                  fit: BoxFit.fill)),
          child: Center(
            child: Container(
              padding:  EdgeInsets.only(top: 2.h),
              height: 80.h,
              width:  80.w,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: EdgeInsets.only(left: 2.w),
                    child: Text(
                      "Term of Servise",
                      style: TextStyle(fontSize: 20.sp,fontFamily: "Imprima",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 2.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:  [
                            Text(
                              "Version -",
                              style: TextStyle(
                                  fontFamily: "Imprima",
                                  fontSize: 14.sp,
                                  color: Color.fromRGBO(20, 27, 73, 1)),
                            ),
                            Text(
                              "2022-02",
                              style: TextStyle(
                                  fontFamily: "Imprima",
                                  fontSize: 14.sp,
                                  color: Color.fromRGBO(138, 140, 159, 1)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children:  [
                            Text(
                              "Last Updated on",
                              style: TextStyle(
                                  fontFamily: "Imprima",
                                  fontSize: 14.sp,
                                  color: Color.fromRGBO(20, 27, 73, 1)),
                            ),
                            Text(
                              "2022-02",
                              style: TextStyle(
                                  fontFamily: "Imprima",
                                  fontSize: 14.sp,
                                  color: Color.fromRGBO(138, 140, 159, 1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                   height: 1.5.h,
                  ),
                  Wrap(children: [
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: Text(
                        "Play Games 24x7 Private Limited (hereinafter referred as “ Play Games 24x7” or “we”) offers online games including and not limited to rummy,",
                        style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima",),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 2.h,
                  ),
                  Wrap(children: [
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: Text(
                        "Play Games 24x7 Private Limited (hereinafter referred as “ Play Games 24x7” or “we”) offers online games including and not limited to rummy,",
                        style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima",),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 2.h,
                  ),
                  Wrap(children: [
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: Text(
                        "Play Games 24x7 Private Limited (hereinafter referred as “ Play Games 24x7” or “we”) offers online games including and not limited to rummy,",
                        style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima",),
                      ),
                    ),
                   ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.5.h, right: 1.5.w),
                        child: Image.asset(
                          AssetUtilities.tcIcon,
                          height: 2.h,
                          width: 2.h,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top:7.h,
            right: 2.h,
            child: IconButton(
                onPressed: () {
                  Get.to(LoginPage());
                  //Navigator.pop(context);
                },
                icon: const Icon(Icons.cancel_rounded))),
      ]),
    );
  }
}
