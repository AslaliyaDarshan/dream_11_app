// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';

class TermConditionScreen extends StatefulWidget {
  const TermConditionScreen({super.key});

  @override
  State<TermConditionScreen> createState() => _TermConditionScreenState();
}

class _TermConditionScreenState extends State<TermConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                  fit: BoxFit.fill)),
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.height / 1.2,
              width: MediaQuery.of(context).size.width / 1.2,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Text(
                      "Term of Servise",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Version -",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(20, 27, 73, 1)),
                              ),
                              Text(
                                "2022-02",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(138, 140, 159, 1)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Last Updated on",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(20, 27, 73, 1)),
                              ),
                              Text(
                                "2022-02",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(138, 140, 159, 1)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Wrap(children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Play Games 24x7 Private Limited (hereinafter referred as “ Play Games 24x7” or “we”) offers online games including and not limited to rummy,",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Play Games 24x7 Private Limited (hereinafter referred as “ Play Games 24x7” or “we”) offers online games including and not limited to rummy,",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Play Games 24x7 Private Limited (hereinafter referred as “ Play Games 24x7” or “we”) offers online games including and not limited to rummy,",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ]),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, right: 10),
                        child: Image.asset(
                          AssetUtilities.tcIcon,
                          height: 12,
                          width: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 50,
            right: 14,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.cancel_rounded))),
      ]),
    );
  }
}
