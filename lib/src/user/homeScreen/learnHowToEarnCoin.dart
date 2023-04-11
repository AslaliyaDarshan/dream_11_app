import 'package:dream_11_app/src/user/homeScreen/earnCrickCoin.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LearnHowToEarnCoinScreen extends StatefulWidget {
  const LearnHowToEarnCoinScreen({super.key});

  @override
  State<LearnHowToEarnCoinScreen> createState() =>
      _LearnHowToEarnCoinScreenState();
}

class _LearnHowToEarnCoinScreenState extends State<LearnHowToEarnCoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 237, 237, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 326,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        AssetUtilities.rewardBg,
                      ),
                      fit: BoxFit.fill)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 38.0),
                    child: Column(
                      children: [
                        const Text(
                          'INTRODUCING',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  AssetUtilities.coin,
                                  height: 67,
                                  width: 59,
                                ),
                                const Text(
                                  'CrickCoins',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 36,
                            ),
                            const Text(
                              '+',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            const SizedBox(
                              width: 36,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  AssetUtilities.gift,
                                  height: 100,
                                  width: 100,
                                ),
                                const Text(
                                  'Reward Shop',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40,
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.75,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      width: MediaQuery.of(context).size.width,
                      margin:
                          const EdgeInsets.only(left: 16, right: 16, top: 41),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Image.asset(
                          AssetUtilities.youtube1,
                          height: 124,
                          width: 178,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: 'CrickCoin ',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.red)),
                              TextSpan(
                                  text: 'for exciting rewards ',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              TextSpan(
                                  text: 'reward Shop ',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.red)),
                            ],
                            text: 'Redeem your ',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,
                          child: Image.asset(
                            AssetUtilities.coin,
                            height: 67,
                            width: 59,
                          ),
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
                          AssetUtilities.gift,
                          height: 69,
                          width: 67.77,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const EarnCrickCoinScreen();
                  }));
                },
                child: Container(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                      left: 26,
                      right: 23,
                      bottom: MediaQuery.of(context).size.height / 5.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(54, 130, 54, 1)),
                  child: const Center(
                    child: Text(
                      'PLAY EVERYDAY. WIN EVERYDAY!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
