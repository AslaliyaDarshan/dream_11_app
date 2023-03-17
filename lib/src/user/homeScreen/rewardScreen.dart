import 'package:dream_11_app/src/user/homeScreen/learnHowToEarnCoin.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 29,
              color: const Color.fromRGBO(7, 37, 7, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetUtilities.coin),
                  const Text(
                    '1 Bonus Cash =₹1 *',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text(
                        '?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 227,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetUtilities.rewardBg),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Image.asset(
                    AssetUtilities.coin,
                    height: 59,
                    width: 53,
                  ),
                  const Text(
                    'Crick Coins Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    '00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'My History ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LearnHowToEarnCoinScreen();
                      }));
                    },
                    child: Container(
                      height: 37,
                      margin: const EdgeInsets.only(
                          left: 35, right: 35, bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(10, 72, 7, 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Text(
                                '?',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Learn how to earn CrickCoins',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0, top: 7),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 14, right: 14, top: 0),
                        child: Text(
                          'Crick Coins',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 14, right: 14, top: 0),
                          child: Text(
                            'redeem these boosters while joining any eligible contest',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 14, right: 14, top: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 55,
                              width: 150,
                              margin: const EdgeInsets.only(right: 17),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey)),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 55,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(193, 255, 193, 1),
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(8))),
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 34,
                                        width: 34,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    0, 100, 0, 1),
                                                width: 1.5),
                                            color: const Color.fromRGBO(
                                                107, 190, 107, 1)),
                                        child: const Center(
                                          child: Text(
                                            '2x',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          const Text(
                                            '3x CrickCoins',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset(
                                                AssetUtilities.coin,
                                                height: 21,
                                                width: 19,
                                              ),
                                              const Text(
                                                '40.00',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey)),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 55,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(193, 255, 193, 1),
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(8))),
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 34,
                                        width: 34,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    0, 100, 0, 1),
                                                width: 1.5),
                                            color: const Color.fromRGBO(
                                                107, 190, 107, 1)),
                                        child: const Center(
                                          child: Text(
                                            '3x',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          const Text(
                                            '3x CrickCoins',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset(
                                                AssetUtilities.coin,
                                                height: 21,
                                                width: 19,
                                              ),
                                              const Text(
                                                '60.00',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 14, right: 14, top: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 55,
                              width: 150,
                              margin: const EdgeInsets.only(right: 17),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey)),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 55,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(193, 255, 193, 1),
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(8))),
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 34,
                                        width: 34,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    0, 100, 0, 1),
                                                width: 1.5),
                                            color: const Color.fromRGBO(
                                                107, 190, 107, 1)),
                                        child: const Center(
                                          child: Text(
                                            '2x',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          const Text(
                                            '3x CrickCoins',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset(
                                                AssetUtilities.coin,
                                                height: 21,
                                                width: 19,
                                              ),
                                              const Text(
                                                '40.00',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey)),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 55,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(193, 255, 193, 1),
                                        borderRadius: BorderRadius.horizontal(
                                            left: Radius.circular(8))),
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 34,
                                        width: 34,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: const Color.fromRGBO(
                                                    0, 100, 0, 1),
                                                width: 1.5),
                                            color: const Color.fromRGBO(
                                                107, 190, 107, 1)),
                                        child: const Center(
                                          child: Text(
                                            '5x',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          const Text(
                                            '5x CrickCoins',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset(
                                                AssetUtilities.coin,
                                                height: 21,
                                                width: 19,
                                              ),
                                              const Text(
                                                '100.00',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.zero,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(241, 238, 238, 1),
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // const SizedBox(
                                //   width: 25,
                                // ),
                                Container(
                                  height: 29,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              54, 130, 54, 1))),
                                  child: const Center(
                                    child: Text(
                                      'Reward Shop',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(54, 130, 54, 1)),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 29,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'My Rewards',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 21,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 125,
                                  width: 125,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              AssetUtilities.rewar1))),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          Image.asset(
                                            AssetUtilities.coin,
                                            height: 13,
                                            width: 11,
                                          ),
                                          const Text(
                                            '180',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9),
                                          ),
                                          const Spacer(),
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 8,
                                            child: Center(
                                              child: Image.asset(
                                                AssetUtilities.bgg,
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 125,
                                  width: 125,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              AssetUtilities.rewar2))),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          Image.asset(
                                            AssetUtilities.coin,
                                            height: 13,
                                            width: 11,
                                          ),
                                          const Text(
                                            '180',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9),
                                          ),
                                          const Spacer(),
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 8,
                                            child: Center(
                                              child: Image.asset(
                                                AssetUtilities.bgg,
                                                height: 15,
                                                width: 15,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
