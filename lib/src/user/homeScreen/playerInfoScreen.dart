// ignore_for_file: depend_on_referenced_packages

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayerInfoScreen extends StatefulWidget {
  const PlayerInfoScreen({Key? key}) : super(key: key);

  @override
  State<PlayerInfoScreen> createState() => _PlayerInfoScreenState();
}

class _PlayerInfoScreenState extends State<PlayerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetUtilities.playerInfobg), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  AssetUtilities.player,
                  width: 65.w,
                  height: 40.h,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 22.sp,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.w),
                            child: Text(
                              'Gareth \nBare',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                          height(15.h),
                          Column(
                            children: [
                              Text(
                                'All Format Run',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: const Color.fromRGBO(171, 166, 166, 1),
                                ),
                              ),
                              Text(
                                '6747',
                                style: TextStyle(
                                    fontSize: 21.sp, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 25.h,
                          ),
                          Image.asset(
                            AssetUtilities.signature,
                            height: 10.h,
                            width: 20.w,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          height(1.5.h),
                          Row(
                            children: [
                              Text(
                                'Creadits ',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: const Color.fromRGBO(171, 166, 166, 1),
                                ),
                              ),
                              Text(
                                '8.5 ',
                                style: TextStyle(
                                    fontSize: 18.sp, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Total Points ',
                                style: TextStyle(
                                  fontSize: 18.5.sp,
                                  color: const Color.fromRGBO(171, 166, 166, 1),
                                ),
                              ),
                              Text(
                                '152 ',
                                style: TextStyle(
                                    fontSize: 18.5.sp, color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(height: 145),
                              Text(
                                'Match',
                                style: TextStyle(
                                  color: Color.fromRGBO(171, 166, 166, 1),
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                '142 ',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 19.0, right: 19),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(171, 166, 166, 1)
                                  .withOpacity(0.99),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Role',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(68, 67, 67, 1)),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'BatsMan',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 4,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 7),
                                child: VerticalDivider(
                                  width: 3,
                                  thickness: 1.5,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Team ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(68, 67, 67, 1)),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Gujarat Titans,Punjab\n,India.',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2.423,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 11.0, top: 11, bottom: 4),
                                child: Text(
                                  'Last Matches Points',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: double.infinity,
                                color: const Color.fromRGBO(217, 217, 217, 1),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    const Text(
                                      'Match',
                                      style: TextStyle(
                                          color: Color.fromRGBO(98, 91, 91, 1),
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          3.5,
                                    ),
                                    const Text(
                                      'Points',
                                      style: TextStyle(
                                          color: Color.fromRGBO(98, 91, 91, 1),
                                          fontSize: 16),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      'Selected By',
                                      style: TextStyle(
                                          color: Color.fromRGBO(98, 91, 91, 1),
                                          fontSize: 16),
                                    ),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 10,
                                    itemBuilder: ((context, index) {
                                      return Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8.0,
                                                    bottom: 9,
                                                    left: 11),
                                                child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2.4,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: const [
                                                      Text(
                                                        'IND VS NZ',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      Text(
                                                        '18 Jan, 2023',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    106,
                                                                    106,
                                                                    106,
                                                                    1),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                '269.00',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        98, 91, 91, 1),
                                                    fontSize: 14),
                                              ),
                                              const Spacer(),
                                              const Text(
                                                '66.06%',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        98, 91, 91, 1),
                                                    fontSize: 14),
                                              ),
                                              const SizedBox(
                                                width: 11,
                                              ),
                                            ],
                                          ),
                                          const Divider(
                                            thickness: 1,
                                            color: Colors.black,
                                          ),
                                        ],
                                      );
                                    })),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
