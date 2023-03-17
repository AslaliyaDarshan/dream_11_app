import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EarnCrickCoinScreen extends StatefulWidget {
  const EarnCrickCoinScreen({super.key});

  @override
  State<EarnCrickCoinScreen> createState() => _EarnCrickCoinScreenState();
}

class _EarnCrickCoinScreenState extends State<EarnCrickCoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 249,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromRGBO(179, 232, 179, 1),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      'How to earn Crick Coins',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.coin1,
                          height: 46,
                          width: 46,
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Image.asset(
                          AssetUtilities.arrow,
                          height: 20,
                          width: 11.77,
                        ),
                        Image.asset(
                          AssetUtilities.arrow,
                          height: 20,
                          width: 11.77,
                        ),
                        Image.asset(
                          AssetUtilities.arrow,
                          height: 20,
                          width: 11.77,
                        ),
                        Image.asset(
                          AssetUtilities.arrow,
                          height: 20,
                          width: 11.77,
                        ),
                        Image.asset(
                          AssetUtilities.arrow,
                          height: 20,
                          width: 11.77,
                        ),
                        Image.asset(
                          AssetUtilities.coin,
                          height: 61,
                          width: 70.77,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Join any contest to unlock CrickCoins',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'are based on your  ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal)),
                              TextSpan(
                                  text: 'latest Level ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                              TextSpan(
                                  text:
                                      'and pervious action you have performed. ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal)),
                            ],
                            text: 'Your first CrickCoins ',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30),
                child: Text.rich(
                  TextSpan(
                    text: 'Earn ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                    children: [
                      TextSpan(
                        text: 'CrickCoins ',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      TextSpan(
                        text: 'when you perform 2 types of action: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              Container(
                height: 25,
                width: 104,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(178, 232, 178, 1),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Text(
                    '24×7',
                    style: TextStyle(
                        color: Color.fromRGBO(54, 130, 54, 1), fontSize: 15),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 14, right: 13),
                padding: const EdgeInsets.only(left: 7, right: 7),
                height: 161,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 1)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: const [
                        Text(
                          'ACTION',
                          style: TextStyle(
                              color: Color.fromRGBO(115, 113, 113, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                        Spacer(),
                        Text(
                          'DREAMCONS',
                          style: TextStyle(
                              color: Color.fromRGBO(115, 113, 113, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Paid Contests Joined',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Earn 1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                                Image.asset(
                                  AssetUtilities.coin,
                                  height: 25,
                                  width: 25,
                                ),
                                const Text(
                                  'For every ₹10 ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            const Text(
                              'you’ve paid ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Free Contests Joined',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                                Image.asset(
                                  AssetUtilities.coin,
                                  height: 25,
                                  width: 25,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Earn up to 3',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                                Image.asset(
                                  AssetUtilities.coin,
                                  height: 25,
                                  width: 25,
                                ),
                                const Text(
                                  'per match',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Container(
                height: 25,
                width: 104,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromRGBO(179, 179, 179, 1)),
                child: const Center(
                  child: Text(
                    'ONE-TIME',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ),
              Container(
                // height: 197,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 14, right: 13, bottom: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5, color: Colors.black)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0, right: 7),
                      child: Row(
                        children: const [
                          Text(
                            'ACTION',
                            style: TextStyle(
                                color: Color.fromRGBO(115, 113, 113, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          ),
                          Spacer(),
                          Text(
                            'DREAMCONS',
                            style: TextStyle(
                                color: Color.fromRGBO(115, 113, 113, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0, right: 7),
                      child: Row(
                        children: [
                          const Text(
                            'Email Verification',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                          const Spacer(),
                          const Text(
                            '2',
                            style: TextStyle(
                                color: Color.fromRGBO(115, 113, 113, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          ),
                          Image.asset(
                            AssetUtilities.coin,
                            height: 25,
                            width: 23,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0, right: 7),
                      child: Row(
                        children: [
                          const Text(
                            'Phonebook Sync',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                          const Spacer(),
                          const Text(
                            '5',
                            style: TextStyle(
                                color: Color.fromRGBO(115, 113, 113, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          ),
                          Image.asset(
                            AssetUtilities.coin,
                            height: 25,
                            width: 23,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0, right: 7),
                      child: Row(
                        children: [
                          const Text(
                            'Profile Picture Changed (First Time)',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                          const Spacer(),
                          const Text(
                            '7',
                            style: TextStyle(
                                color: Color.fromRGBO(115, 113, 113, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          ),
                          Image.asset(
                            AssetUtilities.coin,
                            height: 25,
                            width: 23,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0, right: 7),
                      child: Row(
                        children: [
                          const Text(
                            'Team Name Changed',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                          const Spacer(),
                          const Text(
                            '10',
                            style: TextStyle(
                                color: Color.fromRGBO(115, 113, 113, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          ),
                          Image.asset(
                            AssetUtilities.coin,
                            height: 25,
                            width: 23,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
