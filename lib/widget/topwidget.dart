import 'package:dream_11_app/controller/homePageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          padding: const EdgeInsets.only(left: 5.0),
          child: Wrap(
            spacing: 10,
            children: List.generate(imageList.length, (index) {
              return GestureDetector(
                onTap: () {
                  widget.controller.selectTop(index);
                },
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.controller.selectedTopIndex == index
                                      ? AssetUtilities.back1
                                      : AssetUtilities.back2))),
                      child: Center(
                          child: Image.asset(
                        imageList[index],
                        height: 15.5,
                        width: 15.5,
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.controller.selectedTopIndex == index
                                      ? AssetUtilities.back3
                                      : AssetUtilities.back4))),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            lst[index],
                            style: const TextStyle(
                                fontSize: 6,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        )));
  }
}
