import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:dream_11_app/widget/joinContextWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'createContestScreen.dart';
import 'myContestScreen.dart';

class JoinContextScreen extends StatefulWidget {
  const JoinContextScreen({super.key});

  @override
  State<JoinContextScreen> createState() => _JoinContextScreenState();
}

class _JoinContextScreenState extends State<JoinContextScreen>
    with TickerProviderStateMixin {
  bool isSwitchActive1 = false;
  bool isSwitchActive2 = false;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.animateTo(2);
  }

  int selectedBottomBarIndex = 0;

  selectBottomBar(int index) {
    selectedBottomBarIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 48.0, right: 10),
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(34, 80, 34, 1),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyContextScreen();
            }));
          },
          child: Image.asset(
            AssetUtilities.person1,
            height: 24,
            width: 36,
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(220, 220, 220, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Pk Vs Ind',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '2h:56m left',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15.0),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                        builder: (context, StateSetter setState) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(15.0),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.close)),
                                    const Spacer(),
                                    const Text(
                                      'Set Reminders',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const Spacer()
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, bottom: 10),
                                  child: Text(
                                    'Lineup Announcement (if available)',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            Color.fromRGBO(104, 104, 104, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, top: 10, bottom: 0),
                            child: Row(
                              children: [
                                const Text(
                                  'Match - UAE-WU19 VS BA-WU19',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const Spacer(),
                                Switch(
                                    inactiveThumbColor:
                                        const Color.fromRGBO(134, 128, 128, 1),
                                    value: isSwitchActive1,
                                    onChanged: ((value) {
                                      isSwitchActive1 = value;
                                      setState(() {});
                                    }))
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, top: 0, bottom: 0),
                            child: Row(
                              children: [
                                const Text(
                                  'Tour - ICC Women’s U19 T20 World Cap',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const Spacer(),
                                Switch(
                                    inactiveThumbColor:
                                        const Color.fromRGBO(134, 128, 128, 1),
                                    value: isSwitchActive2,
                                    onChanged: ((value) {
                                      isSwitchActive2 = value;
                                      setState(() {});
                                    }))
                              ],
                            ),
                          ),
                        ],
                      );
                    });
                  },
                );
              },
              icon: const Icon(Icons.notification_add_sharp)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_sharp)),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              child: Text(
                'Full Match',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
              ),
            ),
            Tab(
              child: Text(
                'Batting',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            Tab(
              child: Text(
                'Bowling',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            Tab(
              child: Text(
                'Reverse',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.329,
            child: TabBarView(
              controller: _tabController,
              physics: const BouncingScrollPhysics(),
              dragStartBehavior: DragStartBehavior.down,
              children: selectedBottomBarIndex == 1
                  ? [
                      Center(
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
                                  'Join A Contest', context,
                                  textStyle: const TextStyle(
                                      fontSize: 12, color: Colors.white),
                                  radius: 10,
                                  width: 200),
                            )
                          ],
                        ),
                      ),
                      Text('Context'),
                      Text('Context'),
                      Text('Context'),
                    ]
                  : selectedBottomBarIndex == 2
                      ? [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 12),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 25,
                                  width: double.infinity,
                                  color: const Color.fromRGBO(161, 217, 161, 1),
                                  child: Row(
                                    children: const [
                                      SizedBox(
                                        width: 16,
                                      ),
                                      CircleAvatar(
                                        backgroundColor:
                                            Color.fromRGBO(144, 78, 0, 1),
                                        radius: 8,
                                      ),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Text(
                                        '2 Players not announced im lineup',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(144, 78, 0, 1),
                                            fontSize: 11),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  height: 180,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                  AssetUtilities.teambg,
                                                ),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.46),
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                          top: Radius.circular(
                                                              10))),
                                              child: Row(
                                                children: [
                                                  const SizedBox(width: 16),
                                                  const Text(
                                                    'Team 1',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  ),
                                                  const Spacer(),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: const Icon(
                                                      Icons.edit,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: const Icon(
                                                      Icons.copy,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: const Icon(
                                                      Icons
                                                          .remove_red_eye_outlined,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 7,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                Column(
                                                  children: const [
                                                    SizedBox(
                                                      height: 17,
                                                    ),
                                                    Text(
                                                      'IND',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    ),
                                                    Text(
                                                      '7',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                Column(
                                                  children: const [
                                                    SizedBox(
                                                      height: 17,
                                                    ),
                                                    Text(
                                                      'NZ',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    ),
                                                    Text(
                                                      '4',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Image.asset(
                                                  AssetUtilities.captain,
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                Column(
                                                  children: [
                                                    Image.asset(
                                                      AssetUtilities.viratkohli,
                                                      height: 59,
                                                      width: 52,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Container(
                                                      height: 19,
                                                      width: 62,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                          color: Colors.black),
                                                      child: const Center(
                                                        child: Text(
                                                          'V kohli',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Image.asset(
                                                  AssetUtilities.vc,
                                                  height: 24,
                                                  width: 24,
                                                ),
                                                Column(
                                                  children: [
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Image.asset(
                                                      AssetUtilities.suryo,
                                                      height: 59,
                                                      width: 52,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Container(
                                                      height: 19,
                                                      width: 62,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                          color: const Color
                                                                  .fromRGBO(
                                                              255, 0, 0, 1)),
                                                      child: const Center(
                                                        child: Text(
                                                          'S Yadav',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 11),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                          bottom:
                                                              Radius.circular(
                                                                  10))),
                                              // height: 26,
                                              padding: const EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 6,
                                                  left: 7,
                                                  right: 7),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  Text(
                                                    'WK(1)',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            147, 144, 144, 1),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'BAT(4)',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            147, 144, 144, 1),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'AR(2)',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            147, 144, 144, 1),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'BOWL(4)',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            147, 144, 144, 1),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 41,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          const Color.fromRGBO(54, 130, 54, 1)),
                                  child: const Center(
                                    child: Text(
                                      'Create Team 2',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text('Context'),
                          const Text('Context'),
                          const Text('Context'),
                        ]
                      : [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, top: 10, right: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Sort by',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(131, 129, 129, 1)),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 22,
                                      padding: const EdgeInsets.only(
                                          top: 4,
                                          bottom: 4,
                                          right: 17,
                                          left: 17),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: const Center(
                                        child: Text(
                                          'Entry',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  166, 160, 160, 1),
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 22,
                                      padding: const EdgeInsets.only(
                                          top: 4,
                                          bottom: 4,
                                          right: 17,
                                          left: 17),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: const Center(
                                        child: Text(
                                          'Contest Size',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  166, 160, 160, 1),
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.filter_alt,
                                      size: 18,
                                      color: Color.fromRGBO(110, 105, 105, 1),
                                    ),
                                    const Text(
                                      'All Filters',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(166, 160, 160, 1),
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 2,
                                color: Colors.black,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 8,
                                  shrinkWrap: true,
                                  itemBuilder: ((context, index) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 13.0, top: 2),
                                          child: Text(
                                            'Mega Contest',
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                        JoinContextWidget()
                                      ],
                                    );
                                  }),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Center(
                                child: Text(
                                  'Or',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const CreateContestScreen();
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 41,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Image.asset(
                                          AssetUtilities.plusround,
                                          height: 24,
                                          width: 24,
                                        ),
                                        const SizedBox(
                                          width: 28,
                                        ),
                                        const Text(
                                          'Create & Join Contest',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const Text('Hello2'),
                          const Text('Hello3'),
                          const Text('Hello4'),
                        ],
            ),
          ),
          const Spacer(),
          Container(
            height: 57,
            width: double.infinity,
            color: Colors.white,
            child: Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      selectBottomBar(0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.trophy,
                          height: 24,
                          width: 21.5,
                          color: selectedBottomBarIndex == 0
                              ? const Color.fromRGBO(0, 100, 0, 1)
                              : null,
                        ),
                        Text(
                          'Context',
                          style: TextStyle(
                            fontSize: 12,
                            color: selectedBottomBarIndex == 0
                                ? const Color.fromRGBO(0, 100, 0, 1)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      selectBottomBar(1);

                      ///todo
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.trophy,
                          height: 24,
                          width: 21.5,
                          color: selectedBottomBarIndex == 1
                              ? const Color.fromRGBO(0, 100, 0, 1)
                              : null,
                        ),
                        Text('My Context(0)',
                            style: TextStyle(
                              fontSize: 12,
                              color: selectedBottomBarIndex == 1
                                  ? const Color.fromRGBO(0, 100, 0, 1)
                                  : Colors.black,
                            )),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      selectBottomBar(2);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.person1,
                          height: 24,
                          width: 21.5,
                          color: selectedBottomBarIndex == 2
                              ? const Color.fromRGBO(0, 100, 0, 1)
                              : Colors.black,
                        ),
                        Text('My Team(1)',
                            style: TextStyle(
                              fontSize: 12,
                              color: selectedBottomBarIndex == 2
                                  ? const Color.fromRGBO(0, 100, 0, 1)
                                  : Colors.black,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
