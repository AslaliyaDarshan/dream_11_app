// ignore_for_file: unrelated_type_equality_checks

import 'package:dream_11_app/controller/homePageController.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:dream_11_app/widget/matchView.dart';
import 'package:dream_11_app/widget/topwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContextScreen extends StatefulWidget {
  HomePageController controller;
  ContextScreen({super.key, required this.controller});

  @override
  State<ContextScreen> createState() => _ContextScreenState();
}

class _ContextScreenState extends State<ContextScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        TopWidget(controller: widget.controller),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Container(
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(247, 242, 242, 1)),
            child: Center(
              child: Obx((() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          widget.controller.setSelectedMatchState(0);
                        },
                        child: Text(
                          'Upcoming',
                          style: TextStyle(
                              color: widget.controller.selectedMatchStateIndex.value == 0
                                  ? const Color.fromRGBO(0, 100, 0, 1)
                                  : Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.controller.setSelectedMatchState(1);
                        },
                        child: Text(
                          'Live',
                          style: TextStyle(
                              color: widget.controller.selectedMatchStateIndex.value == 1
                                  ? const Color.fromRGBO(0, 100, 0, 1)
                                  : Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          widget.controller.setSelectedMatchState(2);
                        },
                        child: Text(
                          'Completade',
                          style: TextStyle(
                              color: widget.controller.selectedMatchStateIndex
                                          .value ==
                                      2
                                  ? const Color.fromRGBO(0, 100, 0, 1)
                                  : Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ))),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, top: 15),
            child:
                Obx((() => widget.controller.selectedMatchStateIndex.value == 0
                    ?  MatchView()
                    : widget.controller.selectedMatchStateIndex.value == 1
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  'You haven’s joined any upcoming contests',
                                  style: TextStyle(fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 37,
                                ),
                                Image.asset(
                                  AssetUtilities.stump,
                                  height: 128,
                                  width: 128,
                                ),
                                const SizedBox(
                                  height: 37,
                                ),
                                const Text(
                                  'Join Contests for any of the upcoming matches',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 37,
                                ),
                                GestureDetector(
                                  onTap: (() {}),
                                  child: innerShadowButtonWidget(
                                      'VIEW UPCOMING MATCHES',
                                      context,
                                      textStyle: const TextStyle(
                                          fontSize: 12, color: Colors.white),
                                      radius: 10,
                                      width: 200),
                                )
                              ],
                            ),
                          )
                        :  MatchView()))),
      ],
    );
  }
}
