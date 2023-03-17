import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/transaction_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  void initState() {
    _tabController = TabController(vsync: this, length: 4);
    _tabController!.addListener(() {
      _handleTabSelection();
    });
    super.initState();
  }

  List<String> stringList = [
    'Last 10 Day',
    'Last 1 Month',
    'Last 3 Month',
    'Last 6 Month',
    'Last 12 Month'
  ];
  void _handleTabSelection() {
    setState(() {});
  }

  int selectedIndex = 0;
  selectDownloadTransectionStatement(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('My Transaction'),
        actions: [
          IconButton(
              onPressed: () {
                showGeneralDialog(
                  context: context,
                  barrierDismissible: false,
                  transitionDuration: const Duration(milliseconds: 0),
                  barrierLabel: MaterialLocalizations.of(context).dialogLabel,
                  barrierColor: Colors.black.withOpacity(0.5),
                  pageBuilder: (context, _, __) {
                    return StatefulBuilder(
                        builder: (context, StateSetter setState) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          AppBar(
                            leading: const Icon(
                              Icons.abc,
                              color: Colors.transparent,
                            ),
                            centerTitle: true,
                            backgroundColor:
                                const Color.fromRGBO(54, 130, 54, 1),
                            title: const Text('Download Statement'),
                            actions: [
                              IconButton(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  icon: const Icon(Icons.close))
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Card(
                                color: const Color.fromRGBO(217, 217, 217, 1),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(10))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                          'Choose time period for emailing transaction \nstatement.'),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        selectDownloadTransectionStatement(0);
                                        setState.call(() {});
                                      },
                                      child: Card(
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Last 10 Day',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                            const Spacer(),
                                            Image.asset(
                                              selectedIndex == 0
                                                  ? AssetUtilities.radio
                                                  : AssetUtilities.radioOff,
                                              height: 19,
                                              width: 19,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        selectDownloadTransectionStatement(1);
                                        setState.call(() {});
                                      },
                                      child: Card(
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Last 1 Months',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                            const Spacer(),
                                            Image.asset(
                                              selectedIndex == 1
                                                  ? AssetUtilities.radio
                                                  : AssetUtilities.radioOff,
                                              height: 19,
                                              width: 19,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        selectDownloadTransectionStatement(2);
                                        setState.call(() {});
                                      },
                                      child: Card(
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Last 3 Months',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                            const Spacer(),
                                            Image.asset(
                                              selectedIndex == 2
                                                  ? AssetUtilities.radio
                                                  : AssetUtilities.radioOff,
                                              height: 19,
                                              width: 19,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        selectDownloadTransectionStatement(3);
                                        setState.call(() {});
                                      },
                                      child: Card(
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Last 6 Months',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                            const Spacer(),
                                            Image.asset(
                                              selectedIndex == 3
                                                  ? AssetUtilities.radio
                                                  : AssetUtilities.radioOff,
                                              height: 19,
                                              width: 19,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        selectDownloadTransectionStatement(4);
                                        setState.call(() {});
                                      },
                                      child: Card(
                                        child: Row(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Last 12 Months',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                            const Spacer(),
                                            Image.asset(
                                              selectedIndex == 4
                                                  ? AssetUtilities.radio
                                                  : AssetUtilities.radioOff,
                                              height: 19,
                                              width: 19,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11,
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      );
                    });
                  },
                );
              },
              icon: const Icon(Icons.download_sharp))
        ],
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                      isScrollable: false,
                      onTap: (int index) {
                        setState(() {
                          _tabController!.index = index;
                        });
                      },
                      controller: _tabController,
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.black,
                      labelStyle: const TextStyle(fontSize: 14),
                      tabs: const [
                        Tab(
                          text: "Contests",
                        ),
                        Tab(
                          text: "Deposits",
                        ),
                        Tab(
                          text: "Withdrawls",
                        ),
                        Tab(
                          text: "Others ",
                        ),
                      ]),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.227,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        TransactionTab1(index: 0),
                        TransactionTab1(index: 1),
                        TransactionTab1(index: 2),
                        TransactionTab1(index: 3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
