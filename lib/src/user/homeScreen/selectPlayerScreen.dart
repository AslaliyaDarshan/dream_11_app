import 'package:dream_11_app/controller/joinContestController.dart';
import 'package:dream_11_app/src/user/homeScreen/choosCpatianVCScreen.dart';
import 'package:dream_11_app/src/user/homeScreen/playerInfoScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectPlayerScreen extends StatefulWidget {
  const SelectPlayerScreen({Key? key}) : super(key: key);

  @override
  State<SelectPlayerScreen> createState() => _SelectPlayerScreenState();
}

class _SelectPlayerScreenState extends State<SelectPlayerScreen>
    with TickerProviderStateMixin {
  JoinContestController cnt = Get.put(JoinContestController());
  int selectedIndex = 0;

  setSelectedPlayer(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4);
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
      body: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            color: const Color.fromRGBO(34, 80, 34, 1),
          ),
          Container(
            height: 208,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      AssetUtilities.image,
                    ),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      '18h : 59m Left',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const Spacer(),
                    Image.asset(
                      AssetUtilities.quetionMark,
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      AssetUtilities.india1,
                      height: 34,
                      width: 34,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: const [
                        Text(
                          'IND',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: const [
                        Text(
                          'Players',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '0/11',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: const [
                        Text(
                          'ENG',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      AssetUtilities.england,
                      height: 34,
                      width: 34,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Credit Left : 91.5',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 18,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        11,
                        (index) => Row(
                              children: [
                                Container(
                                  height: 11,
                                  width: 27,
                                  decoration: BoxDecoration(
                                      color: index == 0
                                          ? const Color.fromRGBO(54, 130, 54, 1)
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(22)),
                                  child: Center(
                                    child: Text(
                                      index == 0 ? '1' : '',
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                              ],
                            )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Max 11 Players from a team',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 17,
                        width: 58,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                          child: Container(
                            height: 14,
                            width: 55,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(54, 130, 54, 1),
                                borderRadius: BorderRadius.circular(3)),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(
                                  Icons.delete_rounded,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  'Clear Team',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 7),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 31,
          ),
          Container(
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromRGBO(39, 44, 86, 1)),
              color: const Color.fromRGBO(219, 219, 219, 1),
            ),
            child: DefaultTabController(
              length: 4,
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                labelStyle: const TextStyle(fontSize: 10),
                labelColor: const Color.fromRGBO(0, 100, 0, 1),
                unselectedLabelColor: const Color.fromRGBO(39, 44, 86, 1),
                tabs: const [
                  Tab(
                    text: 'WK 1',
                  ),
                  Tab(
                    text: 'BAT 0',
                  ),
                  Tab(
                    text: 'AR 0',
                  ),
                  Tab(
                    text: 'BOWL 0',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.9,
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    Container(
                      height: 22,
                      width: double.infinity,
                      color: const Color.fromRGBO(54, 130, 54, 1),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                dialog();
                              },
                              child: Row(
                                children: [
                                  const Text(
                                    'Pick 1-4 Wicket Keeper ',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            Color.fromRGBO(186, 251, 117, 1)),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    height: 15,
                                    width: 16,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(34, 80, 34, 1),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: Image.asset(
                                        AssetUtilities.ii,
                                        height: 7,
                                        width: 2.45,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                filterSheet();
                              },
                              child: Image.asset(
                                AssetUtilities.filtersetting,
                                height: 16,
                                width: 17,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'PLAYER',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        const Text(
                          'SELECTED BY',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        const Text(
                          'POINTS',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        Row(
                          children: const [
                            Text(
                              'PLAYER',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(39, 44, 86, 1),
                                  fontSize: 8),
                            ),
                            Icon(
                              Icons.arrow_downward,
                              size: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ListView.separated(
                      separatorBuilder: ((context, index) {
                        return const Divider(
                          thickness: 2,
                          height: 0,
                          color: Color.fromRGBO(198, 194, 194, 1),
                        );
                      }),
                      shrinkWrap: true,
                      itemCount: 5,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setSelectedPlayer(index);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            color: selectedIndex == index
                                ? const Color.fromRGBO(156, 216, 92, 0.4)
                                : Colors.white,
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return PlayerInfoScreen();
                                                },
                                              ),
                                            );
                                          },
                                          child: Container(
                                            height: 38,
                                            width: 38,
                                            alignment: Alignment.center,
                                            child: Stack(children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 1.5),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Center(
                                                    child: Image.asset(
                                                      AssetUtilities.ii,
                                                      height: 5,
                                                      width: 5.53,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  AssetUtilities.personround,
                                                  height: 30,
                                                  width: 30,
                                                ),
                                              )
                                            ]),
                                          ),
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: const [
                                            Text(
                                              'S Samarawickrama',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Sel by 80.68%',
                                              style: TextStyle(
                                                  fontSize: 5,
                                                  color: Color.fromRGBO(
                                                      75, 73, 73, 1),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '207.5 Pts',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '8.5',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          selectedIndex == index
                                              ? AssetUtilities.minus
                                              : AssetUtilities.plus,
                                          height: 19,
                                          width: 15,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 23, top: 2),
                                      height: 8,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          border: Border.all()),
                                      child: const Center(
                                        child: Text(
                                          'IND',
                                          style: TextStyle(fontSize: 5),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 22,
                      width: double.infinity,
                      color: const Color.fromRGBO(54, 130, 54, 1),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                dialog();
                              },
                              child: Row(
                                children: [
                                  const Text(
                                    'Pick 3-6 Batters',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            Color.fromRGBO(186, 251, 117, 1)),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    height: 15,
                                    width: 16,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(34, 80, 34, 1),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: Image.asset(
                                        AssetUtilities.ii,
                                        height: 7,
                                        width: 2.45,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                filterSheet();
                              },
                              child: Image.asset(
                                AssetUtilities.filtersetting,
                                height: 16,
                                width: 17,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'PLAYER',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        const Text(
                          'SELECTED BY',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        const Text(
                          'POINTS',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        Row(
                          children: const [
                            Text(
                              'PLAYER',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(39, 44, 86, 1),
                                  fontSize: 8),
                            ),
                            Icon(
                              Icons.arrow_downward,
                              size: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // const Divider(
                    //   thickness: 1,
                    //   color: Color.fromRGBO(198, 194, 194, 1),
                    // ),
                    ListView.separated(
                      separatorBuilder: ((context, index) {
                        return const Divider(
                          thickness: 2,
                          height: 0,
                          color: Color.fromRGBO(198, 194, 194, 1),
                        );
                      }),
                      shrinkWrap: true,
                      itemCount: 5,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setSelectedPlayer(index);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            color: selectedIndex == index
                                ? const Color.fromRGBO(156, 216, 92, 0.4)
                                : Colors.white,
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return PlayerInfoScreen();
                                                },
                                              ),
                                            );
                                          },
                                          child: Container(
                                            height: 38,
                                            width: 38,
                                            alignment: Alignment.center,
                                            child: Stack(children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 1.5),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Center(
                                                    child: Image.asset(
                                                      AssetUtilities.ii,
                                                      height: 5,
                                                      width: 5.53,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  AssetUtilities.personround,
                                                  height: 30,
                                                  width: 30,
                                                ),
                                              )
                                            ]),
                                          ),
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: const [
                                            Text(
                                              'S Samarawickrama',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Sel by 80.68%',
                                              style: TextStyle(
                                                  fontSize: 5,
                                                  color: Color.fromRGBO(
                                                      75, 73, 73, 1),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '207.5 Pts',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '8.5',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          selectedIndex == index
                                              ? AssetUtilities.minus
                                              : AssetUtilities.plus,
                                          height: 19,
                                          width: 15,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 23, top: 2),
                                      height: 8,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          border: Border.all()),
                                      child: const Center(
                                        child: Text(
                                          'IND',
                                          style: TextStyle(fontSize: 5),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 22,
                      width: double.infinity,
                      color: const Color.fromRGBO(54, 130, 54, 1),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                dialog();
                              },
                              child: Row(
                                children: [
                                  const Text(
                                    'Pick 1-4 All- Rounders',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            Color.fromRGBO(186, 251, 117, 1)),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    height: 15,
                                    width: 16,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(34, 80, 34, 1),
                                        shape: BoxShape.circle),
                                    child: Center(
                                        child: Image.asset(
                                      AssetUtilities.ii,
                                      height: 7,
                                      width: 2.45,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                filterSheet();
                              },
                              child: Image.asset(
                                AssetUtilities.filtersetting,
                                height: 16,
                                width: 17,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'PLAYER',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        const Text(
                          'SELECTED BY',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        const Text(
                          'POINTS',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        Row(
                          children: const [
                            Text(
                              'PLAYER',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(39, 44, 86, 1),
                                  fontSize: 8),
                            ),
                            Icon(
                              Icons.arrow_downward,
                              size: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // const Divider(
                    //   thickness: 1,
                    //   color: Color.fromRGBO(198, 194, 194, 1),
                    // ),
                    ListView.separated(
                      separatorBuilder: ((context, index) {
                        return const Divider(
                          thickness: 2,
                          height: 0,
                          color: Color.fromRGBO(198, 194, 194, 1),
                        );
                      }),
                      shrinkWrap: true,
                      itemCount: 5,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setSelectedPlayer(index);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            color: selectedIndex == index
                                ? const Color.fromRGBO(156, 216, 92, 0.4)
                                : Colors.white,
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            print('Pressed');
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return PlayerInfoScreen();
                                            }));
                                          },
                                          child: Container(
                                            height: 38,
                                            width: 38,
                                            alignment: Alignment.center,
                                            child: Stack(children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 1.5),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Center(
                                                    child: Image.asset(
                                                      AssetUtilities.ii,
                                                      height: 5,
                                                      width: 5.53,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  AssetUtilities.personround,
                                                  height: 30,
                                                  width: 30,
                                                ),
                                              )
                                            ]),
                                          ),
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: const [
                                            Text(
                                              'S Samarawickrama',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Sel by 80.68%',
                                              style: TextStyle(
                                                  fontSize: 5,
                                                  color: Color.fromRGBO(
                                                      75, 73, 73, 1),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '207.5 Pts',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '8.5',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          selectedIndex == index
                                              ? AssetUtilities.minus
                                              : AssetUtilities.plus,
                                          height: 19,
                                          width: 15,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 23, top: 2),
                                      height: 8,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          border: Border.all()),
                                      child: const Center(
                                        child: Text(
                                          'IND',
                                          style: TextStyle(fontSize: 5),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 22,
                      width: double.infinity,
                      color: const Color.fromRGBO(54, 130, 54, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              dialog();
                            },
                            child: Row(
                              children: [
                                const Text(
                                  'Pick 1-4 Wicket Keeper',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromRGBO(186, 251, 117, 1)),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  height: 15,
                                  width: 16,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(34, 80, 34, 1),
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Image.asset(
                                      AssetUtilities.ii,
                                      height: 7,
                                      width: 2.45,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              filterSheet();
                            },
                            child: Image.asset(
                              AssetUtilities.filtersetting,
                              height: 16,
                              width: 17,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'PLAYER',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        const Text(
                          'SELECTED BY',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        const Text(
                          'POINTS',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(39, 44, 86, 1),
                              fontSize: 8),
                        ),
                        Row(
                          children: const [
                            Text(
                              'PLAYER',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(39, 44, 86, 1),
                                  fontSize: 8),
                            ),
                            Icon(
                              Icons.arrow_downward,
                              size: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // const Divider(
                    //   thickness: 1,
                    //   color: Color.fromRGBO(198, 194, 194, 1),
                    // ),
                    ListView.separated(
                      separatorBuilder: ((context, index) {
                        return const Divider(
                          thickness: 2,
                          height: 0,
                          color: Color.fromRGBO(198, 194, 194, 1),
                        );
                      }),
                      shrinkWrap: true,
                      itemCount: 5,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setSelectedPlayer(index);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            color: selectedIndex == index
                                ? const Color.fromRGBO(156, 216, 92, 0.4)
                                : Colors.white,
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            print('Pressed');
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return PlayerInfoScreen();
                                            }));
                                          },
                                          child: Container(
                                            height: 38,
                                            width: 38,
                                            alignment: Alignment.center,
                                            child: Stack(children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: 12,
                                                  width: 12,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 1.5),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Center(
                                                    child: Image.asset(
                                                      AssetUtilities.ii,
                                                      height: 5,
                                                      width: 5.53,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  AssetUtilities.personround,
                                                  height: 30,
                                                  width: 30,
                                                ),
                                              )
                                            ]),
                                          ),
                                        ),
                                        const Spacer(),
                                        Column(
                                          children: const [
                                            Text(
                                              'S Samarawickrama',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Sel by 80.68%',
                                              style: TextStyle(
                                                  fontSize: 5,
                                                  color: Color.fromRGBO(
                                                      75, 73, 73, 1),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '207.5 Pts',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '8.5',
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          selectedIndex == index
                                              ? AssetUtilities.minus
                                              : AssetUtilities.plus,
                                          height: 19,
                                          width: 15,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 23, top: 2),
                                      height: 8,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          border: Border.all()),
                                      child: const Center(
                                        child: Text(
                                          'IND',
                                          style: TextStyle(fontSize: 5),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
          // Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 23, right: 23, top: 8, bottom: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(54, 130, 54, 1)),
                    child: const Center(
                      child: Text(
                        'PREVIEW',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChoosCaptainVCScreen();
                    }));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 23, right: 23, top: 8, bottom: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(94, 94, 94, 1)),
                    child: const Center(
                      child: Text(
                        'CONTINUE',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }

  dialog() {
    return Get.defaultDialog(
      title: "Selection Rules!",
      content: text(
          "Now you can select upto 4 Wicket-Keepers, 6 Batter,4 All-Rounders & 6 Bowlers.",
          16.sp,
          Colors.black87,
          pFontWeight: FontWeight.w400),
      actions: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset("assets/images/dialog.png"),
            Padding(
              padding: EdgeInsets.only(right: 2.w, bottom: 1.h, top: 2.h),
              child: SizedBox(
                height: 5.h,
                width: 26.w,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(backgroundGreenClr)),
                  onPressed: () {
                    Get.back();
                  },
                  child: text("GOT IT", 17.sp, backgroundWhiteClr),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  filterSheet() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: 28.h,
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        decoration: BoxDecoration(
          color: backgroundWhiteClr,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Obx(
          () => Column(
            children: [
              height(0.8.h),
              Container(
                height: 0.8.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20.sp)),
              ),
              height(1.2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text("", 19.sp, Colors.black, pFontWeight: FontWeight.w700),
                    text("FILTER BY TEAMS", 19.sp, Colors.black,
                        pFontWeight: FontWeight.w700),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: text("Clear", 18.sp, Colors.black54),
                    )
                  ],
                ),
              ),
              height(1.2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text("India", 18.sp, Colors.black),
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      value: cnt.country1.value,
                      onChanged: (value) {
                        cnt.country1.value = value!;
                        cnt.country2.value = false;
                        cnt.all.value = false;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text("England", 18.sp, Colors.black),
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      value: cnt.country2.value,
                      onChanged: (value) {
                        cnt.country2.value = value!;
                        cnt.country1.value = false;
                        cnt.all.value = false;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text("All", 18.sp, Colors.black),
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      value: cnt.all.value,
                      onChanged: (value) {
                        cnt.all.value = value!;
                        cnt.country1.value = false;
                        cnt.country2.value = false;
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
