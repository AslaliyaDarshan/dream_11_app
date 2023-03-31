import 'package:dream_11_app/widget/joinContextWidget.dart';
import 'package:flutter/material.dart';

class MyContextScreen extends StatefulWidget {
  MyContextScreen({Key? key}) : super(key: key);

  @override
  State<MyContextScreen> createState() => _MyContextScreenState();
}

class _MyContextScreenState extends State<MyContextScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(220, 220, 220, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Context'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt)),
        ],
        bottom: PreferredSize(
          preferredSize: Size(screenSize.width, 80),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 35,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Ind vs Eng',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      'Ind vs Eng',
                      style: TextStyle(
                          fontSize: 16, color: Color.fromRGBO(255, 0, 0, 1)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: [
                  const Tab(
                    child: Text(
                      'PRIZE POOL',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: const [
                        Text(
                          'SPOTS',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10),
                        ),
                        Icon(
                          Icons.arrow_upward,
                          size: 15,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  const Tab(
                    child: Text(
                      'WINNERS',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                  ),
                  const Tab(
                    child: Text(
                      'ENTEY',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return JoinContextWidget();
                  }),
                ),
              )
            ],
          ),
          Text('data'),
          Text('data'),
          Text('Data'),
        ],
      ),
    );
  }
}
