// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dream_11_app/src/onboarding_screen/loginScreen/loginScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TermConditionScreen extends StatefulWidget {
  const TermConditionScreen({super.key});

  @override
  State<TermConditionScreen> createState() => _TermConditionScreenState();
}

class _TermConditionScreenState extends State<TermConditionScreen> {
  late double hsize = MediaQuery.of(context).size.height;
  late double wsize = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: hsize*1,
          width: wsize*1,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                  fit: BoxFit.fill)),
          child: Center(
            child: Container(
              padding:  EdgeInsets.only(top: hsize*0.03),
              height: hsize*0.8,
              width:  wsize*0.8,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: EdgeInsets.only(left: wsize*0.04),
                    child: AutoSizeText(
                      "Term of Servise",
                      style: TextStyle(fontSize: 20,fontFamily: "Imprima",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: hsize*0.02,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: wsize*0.4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            AutoSizeText(
                              "Version -",
                              style: TextStyle(
                                  fontFamily: "Imprima",
                                  fontSize: 10,
                                  color: Color.fromRGBO(20, 27, 73, 1)),
                            ),
                            AutoSizeText(
                              "2022-02",
                              style: TextStyle(
                                  fontFamily: "Imprima",
                                  fontSize: 10,
                                  color: Color.fromRGBO(138, 140, 159, 1)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            AutoSizeText(
                              "Last Updated on",
                              style: TextStyle(
                                  fontFamily: "Imprima",
                                  fontSize: 10,
                                  color: Color.fromRGBO(20, 27, 73, 1)),
                            ),
                            AutoSizeText(
                              "2022-02",
                              style: TextStyle(
                                  fontFamily: "Imprima",
                                  fontSize: 10,
                                  color: Color.fromRGBO(138, 140, 159, 1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                   SizedBox(
                   height: hsize*0.03,
                  ),
                  Wrap(children: [
                     Padding(
                      padding: EdgeInsets.only(left: wsize*0.04, right: wsize*0.04),
                      child: AutoSizeText(
                        "Play Games 24x7 Private Limited (hereinafter referred as “ Play Games 24x7” or “we”) offers online games including and not limited to rummy,",
                        style: TextStyle(fontSize: 12,fontFamily: "Imprima",),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: hsize*0.02,
                  ),
                  Wrap(children: [
                     Padding(
                      padding: EdgeInsets.only(left: wsize*0.04, right: wsize*0.04),
                      child: AutoSizeText(
                        "Play Games 24x7 Private Limited (hereinafter referred as “ Play Games 24x7” or “we”) offers online games including and not limited to rummy,",
                        style: TextStyle(fontSize: 12,fontFamily: "Imprima",),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: hsize*0.02,
                  ),
                  Wrap(children: [
                     Padding(
                      padding: EdgeInsets.only(left: wsize*0.04, right: wsize*0.04),
                      child: AutoSizeText(
                        "Play Games 24x7 Private Limited (hereinafter referred as “ Play Games 24x7” or “we”) offers online games including and not limited to rummy,",
                        style: TextStyle(fontSize: 12,fontFamily: "Imprima",),
                      ),
                    ),
                   ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: hsize*0.02, right: wsize*0.025),
                        child: Image.asset(
                          AssetUtilities.tcIcon,
                          height: hsize*0.02,
                          width: wsize*0.04,
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
            top: hsize*0.07,
            right: wsize*0.04,
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
