import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class JoinContextWidget extends StatefulWidget {
  const JoinContextWidget({super.key});

  @override
  State<JoinContextWidget> createState() => _JoinContextWidgetState();
}

class _JoinContextWidgetState extends State<JoinContextWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 13, right: 13, top: 10, bottom: 10),
          child: Container(
            height: 105,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 6, right: 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15),
                    child: Row(
                      children: const [
                        Text(
                          'Pool prize',
                          style: TextStyle(
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 12),
                        ),
                        Spacer(),
                        Text(
                          'Entry',
                          style: TextStyle(
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4.45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15),
                    child: Row(
                      children: [
                        const Text(
                          '₹15 Crores',
                          style: TextStyle(fontSize: 20),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, top: 2, bottom: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(54, 130, 54, 1)),
                          child: const Text(
                            '₹599',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15),
                    child: Container(
                      height: 3,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(156, 215, 93, 1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 3,
                            width: 51,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(27, 104, 0, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15),
                    child: Row(
                      children: const [
                        Text(
                          '3 spots left',
                          style: TextStyle(
                              fontSize: 9,
                              color: Color.fromRGBO(54, 130, 54, 1)),
                        ),
                        Spacer(),
                        Text(
                          '7 spots',
                          style: TextStyle(
                              fontSize: 9,
                              color: Color.fromRGBO(128, 128, 128, 1)),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 23,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(5)),
                      color: Color.fromRGBO(182, 182, 182, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 15),
                      child: Row(
                        children: [
                          Image.asset(
                            AssetUtilities.award,
                            height: 13,
                            width: 10,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '₹1crore',
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Image.asset(
                            AssetUtilities.trophy,
                            height: 15,
                            width: 15,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '71%  ',
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Upto 6',
                            style: TextStyle(fontSize: 12),
                          ),
                          const Spacer(),
                          Image.asset(
                            AssetUtilities.yes,
                            height: 14,
                            width: 14,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Guranteed',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
