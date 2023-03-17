import 'package:dream_11_app/src/user/homeScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/tabbar_widget.dart';
import 'package:flutter/material.dart';

class VerificationDocumentScreen extends StatefulWidget {
  VerificationDocumentScreen({Key? key}) : super(key: key);

  @override
  State<VerificationDocumentScreen> createState() =>
      _VerificationDocumentScreenState();
}

class _VerificationDocumentScreenState extends State<VerificationDocumentScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 5);
    _tabController!.addListener(() {
      _handleTabSelection();
    });
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text(
          "KYC quick",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 5,
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Colors.black,
                    labelStyle: const TextStyle(fontSize: 14),
                    tabs: const [
                      Tab(
                        text: "Connect",
                      ),
                      Tab(
                        text: "Email",
                      ),
                      Tab(
                        text: "PAN",
                      ),
                      Tab(
                        text: "Add.Proof",
                      ),
                      Tab(
                        text: "Bank",
                      ),
                    ]),
                Row(
                  children: [
                    customeContainer(0,
                        width: MediaQuery.of(context).size.width / 5),
                    customeContainer(1,
                        width: MediaQuery.of(context).size.width / 5),
                    customeContainer(2,
                        width: MediaQuery.of(context).size.width / 5),
                    customeContainer(3,
                        width: MediaQuery.of(context).size.width / 5),
                    customeContainer(4,
                        width: MediaQuery.of(context).size.width / 5)
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.25,
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5))),
                  child: TabBarView(controller: _tabController, children: [
                    TabBarWidget(onTap: () {
                      _tabController!.animateTo(1);
                    }),
                    TabBarWidget2(onTap: () {
                      _tabController!.animateTo(2);
                    }),
                    TabBarWidget3(onTap: () {
                      _tabController!.animateTo(3);
                    }),
                    TabBarWidget4(onTap: () {
                      _tabController!.animateTo(4);
                    }),
                    TabBarWidget5(onTap: () {
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }), (route) => false);
                    }),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container customeContainer(int index, {double? width}) {
    return Container(
      height: 2,
      width: width ?? 70,
      color: _tabController!.index == index ? Colors.green : Colors.black,
    );
  }
}
