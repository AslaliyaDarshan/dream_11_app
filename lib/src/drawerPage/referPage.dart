import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReferScreen extends StatefulWidget {
  const ReferScreen({super.key});

  @override
  State<ReferScreen> createState() => _ReferScreenState();
}

class _ReferScreenState extends State<ReferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('My Referrals'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            Image.asset(
              AssetUtilities.referImage,
            ),
            SizedBox(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: const Color.fromRGBO(237, 237, 237, 1),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 27,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Share invite code',
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'IDCAJBEBGH98',
                              style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Image.asset(
                              AssetUtilities.copy,
                              height: 15,
                              width: 12.75,
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      AssetUtilities.whatsappicon,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Image.asset(
                      AssetUtilities.moreicon,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 214,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: const Color.fromRGBO(237, 237, 237, 1),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 11, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Earn upto ₹8000 for every referral',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 4),
                        child: Text(
                          '- Get ₹100 cash bonus after your friend verify their mobile number on CrickSwitch.',
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Kick off your friend’s CrickAwitch!',
                        style: TextStyle(
                            color: Color.fromRGBO(18, 117, 33, 1),
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 105,
                            width: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 22,
                                  width: 120,
                                  color: const Color.fromRGBO(217, 217, 217, 1),
                                  child: const Center(
                                      child: Text(
                                    'Both of you get',
                                    style: TextStyle(fontSize: 12),
                                  )),
                                ),
                                Container(
                                    height: 70,
                                    width: 120,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '₹',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              '100.00',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '₹',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              '200.00',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '₹',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              '3000.00',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '₹',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              '4600.00',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: 105,
                            width: 120,
                            child: Column(
                              children: [
                                Container(
                                  height: 22,
                                  width: 120,
                                  color: const Color.fromRGBO(217, 217, 217, 1),
                                  child: const Center(
                                      child: Text(
                                    'If your friendinvests',
                                    style: TextStyle(fontSize: 12),
                                  )),
                                ),
                                Container(
                                    height: 70,
                                    width: 120,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '₹',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              '100.00',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '₹',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              '200.00',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '₹',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              '3000.00',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '₹',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              '4600.00',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Container(
              height: 39,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black, width: 0.5)),
              child: const Center(
                child: Text(
                  'You haven’t invited any friends yet',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Container(
              height: 27,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black, width: 0.5)),
              child: const Center(
                child: Text(
                  'INVITE PHONE CONTECTS',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(11, 132, 11, 1)),
                ),
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 26,
                  width: 143,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(178, 233, 159, 1),
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "PER FRIEND",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ],
                          text: "₹551 ",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(255, 0, 0, 1))),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
