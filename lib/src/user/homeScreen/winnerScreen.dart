import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WinnerScreen extends StatefulWidget {
  const WinnerScreen({super.key});

  @override
  State<WinnerScreen> createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {
  List userList = [
    {
      'rank': '#0',
      'arrow': const SizedBox.shrink(),
      'name': 'RAJG00',
      'points': '0 pts'
    },
    {
      'rank': '#4',
      'arrow': const SizedBox.shrink(),
      'name': 'VIRAT11',
      'points': '32365.5pts'
    },
    {
      'rank': '#5',
      'arrow': const Icon(
        Icons.arrow_drop_up,
        color: Colors.green,
      ),
      'name': 'MUMBAI01',
      'points': '32315.5pts'
    },
    {
      'rank': '#6',
      'arrow': const Icon(
        Icons.arrow_drop_down,
        color: Colors.red,
      ),
      'name': 'BUFFY',
      'points': '32242.5pts'
    },
    {
      'rank': '#7',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const Icon(
        Icons.arrow_drop_up,
        color: Colors.green,
      ),
      'name': 'MODI512',
      'points': '32218 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
    {
      'rank': '#8',
      'arrow': const SizedBox.shrink(),
      'name': '11VISONS',
      'points': '32228 pts'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 28,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(54, 130, 54, 1),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'T-20 League 2022-23',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 12),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 28,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Contact',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 12),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset(AssetUtilities.celebration),
                SizedBox(
                  height: 250,
                  width: 100,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          AssetUtilities.award1,
                          height: 153,
                          width: 113,
                        ),
                        const Text(
                          'jaitejal \n32546 pts',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(54, 130, 54, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 100,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          AssetUtilities.award1,
                          height: 153,
                          width: 113,
                        ),
                        const Text(
                          'jaitejal \n32546 pts',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(54, 130, 54, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          AssetUtilities.award2,
                          height: 153,
                          width: 113,
                        ),
                        const Text(
                          'Sunny1164 \n32742.50 pts',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(54, 130, 54, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          AssetUtilities.award3,
                          height: 153,
                          width: 113,
                        ),
                        const Text(
                          'K.m.sahanuaj \n32430.50 pts',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(54, 130, 54, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 32,
              margin: const EdgeInsets.only(left: 13, right: 13, top: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(92, 154, 92, 1)),
              child: Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Rank',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    'User Name',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Spacer(),
                  Text(
                    'Point',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.469,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(54, 130, 54, 0.81),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: ListView.builder(
                itemCount: userList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          userList[index]['rank'],
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              userList[index]['arrow'],
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Icon(
                          Icons.person_pin,
                          color: Colors.white,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 28,
                        ),
                        Text(
                          userList[index]['name'],
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          userList[index]['points'],
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
