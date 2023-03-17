import 'package:dream_11_app/src/user/homeScreen/selectPlayerScreen.dart';
import 'package:dream_11_app/widget/joinContextWidget.dart';
import 'package:dream_11_app/widget/matchView.dart';
import 'package:flutter/material.dart';

class WinningBreakPointScreen extends StatefulWidget {
  WinningBreakPointScreen({Key? key}) : super(key: key);

  @override
  State<WinningBreakPointScreen> createState() =>
      _WinningBreakPointScreenState();
}

class _WinningBreakPointScreenState extends State<WinningBreakPointScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    _tabController!.addListener(() {
      _handleTabSelection();
    });
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  List rankList = [
    '1',
    '2',
    '3-100',
    '101-500',
    '501-1000',
    ' 1001-5000',
    '5001-10000',
    '10001-15000',
    '15001-20000',
    '20001-50000'
  ];
  List prizeList = [
    '₹500000',
    '₹400000',
    '₹300000',
    '₹200000',
    '₹100000',
    '₹50000',
    '₹20000',
    '₹10000',
    '₹5000',
    '₹1000'
  ];
  bool isSwitchActive1 = false;
  bool isSwitchActive2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Column(
        children: [
          const JoinContextWidget(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SelectPlayerScreen();
              }));
            },
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(54, 130, 54, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.only(
                      right: 4, left: 4, top: 0, bottom: 0),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(54, 130, 54, 1),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(54, 130, 54, 1),
                            blurRadius: 5,
                            spreadRadius: 5)
                      ]),
                  // width: double.infinity,
                  child: const Center(
                    child: Text(
                      'Join This Contest',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 38,
            width: double.infinity,
            child: Card(
              child: DefaultTabController(
                length: 2,
                child: TabBar(
                  controller: _tabController,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Winning Breakup',
                    ),
                    Tab(
                      text: 'Winning Breakup',
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.622,
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          'Rank',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(108, 108, 108, 1)),
                        ),
                        Spacer(),
                        Text(
                          'Prize',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(108, 108, 108, 1)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Card(
                        child: ListView.builder(
                          itemCount: rankList.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, bottom: 10, top: 10),
                                      child: Text(
                                        rankList[index],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                129, 121, 121, 1)),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(prizeList[index],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                129, 121, 121, 1))),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8, bottom: 10),
                      child: Text(
                        """Note:The Actual prize money may be different then the prize money money mentioned above if there is a tie for any of the winning  positions. Check FAQ’s for further details. As per government   regulations, a tax of 30% wile be deducted if an individual wins more then Rs. 10,000.""",
                        style: TextStyle(fontSize: 13),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          'Rank',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(108, 108, 108, 1)),
                        ),
                        Spacer(),
                        Text(
                          'Prize',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(108, 108, 108, 1)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Card(
                        child: ListView.builder(
                          itemCount: rankList.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  children: const [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.0, bottom: 10, top: 10),
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Color.fromRGBO(54, 130, 54, 1),
                                          child: Center(
                                            child: Text(
                                              'S',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('steve123@#(T1)',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black))
                                  ],
                                ),
                                const Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
