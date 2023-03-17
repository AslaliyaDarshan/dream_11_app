import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';

class AddCashScreen extends StatefulWidget {
  AddCashScreen({Key? key}) : super(key: key);

  @override
  State<AddCashScreen> createState() => _AddCashScreenState();
}

class _AddCashScreenState extends State<AddCashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Add Cash'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 41,
            child: Card(
              child: Row(
                children: const [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.wallet,
                    color: Color.fromRGBO(0, 119, 47, 1),
                    size: 20,
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  Text(
                    "Current Balance",
                    style: TextStyle(fontSize: 14),
                  ),
                  Spacer(),
                  Text('₹0'),
                  SizedBox(
                    width: 8,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          SizedBox(
            height: 70,
            child: Card(
              child: Row(
                children: [
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(30, 188, 93, 1),
                        borderRadius: BorderRadius.circular(7)),
                    child: Column(
                      children: [
                        Container(
                          height: 37,
                          width: 150,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(238, 238, 238, 1),
                              borderRadius: BorderRadius.circular(7)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Amount to add',
                                  style: TextStyle(
                                    color: Color.fromRGBO(54, 130, 54, 1),
                                    fontSize: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text('₹200'),
                                    const Spacer(),
                                    Image.asset(
                                      AssetUtilities.close,
                                      height: 12,
                                      width: 12,
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 26,
                    width: 63,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: const Center(child: Text('₹500')),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 26,
                    width: 63,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: const Center(child: Text('₹500')),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 80,
            child: Card(
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(54, 130, 54, 1)),
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 3,
                        right: MediaQuery.of(context).size.width / 3,
                        top: 9,
                        bottom: 9),
                    child: const Text('ADD ₹150'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
