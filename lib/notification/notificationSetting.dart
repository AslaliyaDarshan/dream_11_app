import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen>
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Notification'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DefaultTabController(
              length: 2,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabBar(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      isScrollable: true,
                      onTap: (int index) {
                        setState(() {
                          _tabController!.index = index;
                        });
                      },
                      controller: _tabController,
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.black,
                      labelStyle: const TextStyle(fontSize: 18),
                      tabs: const [
                        Tab(
                          text: "ALL",
                        ),
                        Tab(
                          text: "OFFER",
                        ),
                      ]),
                  Container(
                    height: MediaQuery.of(context).size.height - 136,
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        tabNotificationWidget(),
                        tabNotificationWidget()
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget tabNotificationWidget() {
    return Column(
      children: [
        SizedBox(
          height: 90,
          width: MediaQuery.of(context).size.width,
          child: Card(
            child: Row(
              children: [
                Image.asset(
                  AssetUtilities.discount,
                  height: 51,
                  width: 51,
                ),
                const SizedBox(
                  width: 9,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Discount unlocked',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      const Flexible(
                        child: Text(
                          'You’ve got a 100% discount! This special offer expires soon.',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 1.6),
                        child: const Text(
                          '28 mins ago',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
