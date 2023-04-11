import 'dart:ui';

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';

class ChoosCaptainVCScreen extends StatefulWidget {
  ChoosCaptainVCScreen({Key? key}) : super(key: key);

  @override
  State<ChoosCaptainVCScreen> createState() => _ChoosCaptainVCScreenState();
}

class _ChoosCaptainVCScreenState extends State<ChoosCaptainVCScreen> {
  bool isCaptainSelected = false;
  bool isViceCaptainSelected = false;

  toggleCaptainSelected() {
    isCaptainSelected = !isCaptainSelected;
    setState(() {});
  }

  toggleViceCaptainSelection() {
    isViceCaptainSelected = !isViceCaptainSelected;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 40,
            padding: const EdgeInsets.only(left: 25, right: 25),
            decoration:
                const BoxDecoration(color: Color.fromRGBO(54, 130, 54, 1)),
            child: const Center(
              child: Text(
                'Team Preview',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 40,
            padding: const EdgeInsets.only(left: 30, right: 30),
            decoration:
                const BoxDecoration(color: Color.fromRGBO(34, 80, 34, 1)),
            child: const Center(
              child: Text(
                'Save Team',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ),
      ]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetUtilities.playerInfobg),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Choose  Captain and Vice Captain',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'IND',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Image.asset(
                    AssetUtilities.india2,
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  const Text(
                    'VS',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 41,
                  ),
                  Image.asset(
                    AssetUtilities.nzflag,
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    'NZ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              const Text(
                '19h : 48M Left',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 18,
                          right: MediaQuery.of(context).size.width / 18,
                          top: 5,
                          bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromRGBO(255, 0, 0, 1),
                            child: Text(
                              'C',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Get 2x Points',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 0, 0, 1)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 15,
                          right: MediaQuery.of(context).size.width / 15,
                          top: 5,
                          bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromRGBO(0, 100, 0, 1),
                            child: Text(
                              'VC',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Get 1.5x Points',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(0, 100, 0, 1)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.59,
                width: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 28,
                        width: double.infinity,
                        color: const Color.fromRGBO(159, 159, 160, 0.38),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Players',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(134, 126, 126, 1)),
                            ),
                            Spacer(),
                            Text(
                              'Points',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(134, 126, 126, 1)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'c',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(134, 126, 126, 1)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Vc',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(134, 126, 126, 1)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 28,
                        width: double.infinity,
                        color: const Color.fromRGBO(67, 67, 68, 0.38),
                        child: const Center(
                          child: Text(
                            'Wicket Keeper',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      Container(
                        height: 28,
                        width: double.infinity,
                        color: const Color.fromRGBO(67, 67, 68, 0.38),
                        child: const Center(
                          child: Text(
                            'Batsmant',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      Container(
                        height: 28,
                        width: double.infinity,
                        color: const Color.fromRGBO(67, 67, 68, 0.38),
                        child: const Center(
                          child: Text(
                            'All Rounder',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                      const SizedBox(
                        height: 13,
                      ),
                      customProfile(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customProfile() {
    return Row(
      children: [
        const SizedBox(
          width: 11,
        ),
        Column(
          children: [
            Image.asset(
              AssetUtilities.personround,
              height: 30,
              width: 30,
            ),
            const Icon(
              Icons.arrow_drop_down,
            ),
            Row(
              children: [
                Container(
                  height: 16,
                  width: 31,
                  color: const Color.fromRGBO(217, 217, 217, 1),
                  child: const Center(
                    child: Text('NZ'),
                  ),
                ),
                Container(
                  height: 16,
                  width: 31,
                  color: const Color.fromRGBO(54, 130, 54, 1),
                  child: const Center(
                    child: Text('WK'),
                  ),
                ),
              ],
            )
          ],
        ),
        const Text(
          'T Lathem',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        const SizedBox(
          width: 80,
        ),
        const Text(
          '222',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Color.fromRGBO(143, 143, 143, 1)),
        ),
        SizedBox(
          width: 35,
        ),
        GestureDetector(
          onTap: () {
            toggleCaptainSelected();
          },
          child: Container(
            height: 23,
            width: 23,
            decoration: BoxDecoration(
                color: isCaptainSelected
                    ? const Color.fromRGBO(39, 44, 86, 1)
                    : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                    color: isCaptainSelected
                        ? Colors.white
                        : const Color.fromRGBO(143, 143, 143, 1))),
            child: Center(
              child: Text(
                isCaptainSelected ? "2X" : 'C',
                style: TextStyle(
                    fontSize: 12,
                    color: isCaptainSelected
                        ? Colors.white
                        : const Color.fromRGBO(143, 143, 143, 1)),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            toggleViceCaptainSelection();
          },
          child: Container(
            height: 23,
            width: 23,
            decoration: BoxDecoration(
                color: isViceCaptainSelected
                    ? const Color.fromRGBO(54, 130, 54, 1)
                    : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                    color: isViceCaptainSelected
                        ? Colors.white
                        : const Color.fromRGBO(143, 143, 143, 1))),
            child: Center(
              child: Text(
                isViceCaptainSelected ? "1.5" : 'VC',
                style: TextStyle(
                    fontSize: 12,
                    color: isViceCaptainSelected
                        ? Colors.white
                        : const Color.fromRGBO(143, 143, 143, 1)),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
