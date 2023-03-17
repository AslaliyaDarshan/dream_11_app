import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';

import '../../../widget/buttonWidget.dart';
import 'winningBreakPointScreen.dart';

class CreateContextScreen extends StatefulWidget {
  CreateContextScreen({Key? key}) : super(key: key);

  @override
  State<CreateContextScreen> createState() => _CreateContextScreenState();
}

enum SingingCharacter { lafayette, jefferson }

class _CreateContextScreenState extends State<CreateContextScreen> {
  TextEditingController contextNameController = TextEditingController();
  TextEditingController totalAmountController = TextEditingController();
  TextEditingController contextSizeController = TextEditingController();
  TextEditingController contextCodeController = TextEditingController();

  int selectedIndex = 0;
  selecteContext(int index) {
    selectedIndex = index;
    setState(() {});
  }

  SingingCharacter grpValue = SingingCharacter.jefferson;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(220, 220, 220, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(34, 80, 34, 1),
        title: const Text(
          'Context',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: [
          const TextButton(
              onPressed: null,
              child: Text(
                '0h:2m:14s',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              )),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.account_balance_wallet)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 47,
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 45,
                    ),
                    Image.asset(
                      AssetUtilities.india,
                      height: 34,
                      width: 34,
                    ),
                    const SizedBox(
                      width: 21,
                    ),
                    const Text(
                      'IND',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    const SizedBox(
                      width: 21,
                    ),
                    const Text(
                      'ENG',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 21,
                    ),
                    Image.asset(
                      AssetUtilities.england,
                      height: 34,
                      width: 34,
                    ),
                    const SizedBox(
                      width: 44,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 50,
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Stack(
                      children: [
                        Container(
                          width: 40,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 0,
                              ),
                            ),
                            child: Image.asset(AssetUtilities.style),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Create Contest & Earn',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 25,
                    width: 81,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: const Color.fromRGBO(54, 130, 54, 1))),
                    child: const Center(
                      child: Text(
                        'Withdraw',
                        style: TextStyle(
                            color: Color.fromRGBO(54, 130, 54, 1),
                            fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 28,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      selecteContext(0);
                    },
                    child: Container(
                      height: 28,
                      width: (selectedIndex == 0
                          ? (MediaQuery.of(context).size.width / 2)
                          : (MediaQuery.of(context).size.width / 2) - 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: selectedIndex == 0
                              ? const Color.fromRGBO(54, 130, 54, 1)
                              : Colors.white),
                      child: Center(
                        child: Text(
                          'Create Contest',
                          style: TextStyle(
                              color: selectedIndex == 0
                                  ? Colors.white
                                  : const Color.fromRGBO(39, 44, 86, 1)),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selecteContext(1);
                    },
                    child: Container(
                      height: 28,
                      width: (selectedIndex == 0
                          ? (MediaQuery.of(context).size.width / 2) - 20
                          : (MediaQuery.of(context).size.width / 2)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: selectedIndex == 1
                              ? const Color.fromRGBO(54, 130, 54, 1)
                              : Colors.white),
                      child: Center(
                        child: Text(
                          'Join Contest',
                          style: TextStyle(
                              color: selectedIndex == 1
                                  ? Colors.white
                                  : const Color.fromRGBO(39, 44, 86, 1)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            selectedIndex == 0
                ? Container(
                    height: 400,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Entry Per Team',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '₹0.0',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 0, 0, 1),
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Center(
                              child: Text(
                                '*  Entry is Calculated based on total prize amount & Contest Size.',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color.fromRGBO(255, 0, 0, 1),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Contest Name',
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            customeTextFormField(contextNameController),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Total Winning amount (Rs & ₹)',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Spacer(),
                                Text(
                                  '* Max 20,000',
                                  style: TextStyle(
                                      color: Color.fromRGBO(128, 128, 128, 1),
                                      fontSize: 14),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            customeTextFormField(totalAmountController),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Contest Size',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Spacer(),
                                Text(
                                  '*Min 2  & Max 20,000',
                                  style: TextStyle(
                                      color: Color.fromRGBO(128, 128, 128, 1),
                                      fontSize: 14),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            customeTextFormField(contextSizeController),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Allow Multi Teams',
                                  style: TextStyle(
                                      color: Color.fromRGBO(128, 128, 128, 1),
                                      fontSize: 14),
                                ),
                                const SizedBox(
                                  width: 68,
                                ),
                                Radio(
                                    value: SingingCharacter.jefferson,
                                    groupValue: grpValue,
                                    onChanged: ((value) {
                                      grpValue = value!;
                                      setState(() {});
                                    })),
                                const Text(
                                  'Yes',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Radio(
                                    value: SingingCharacter.lafayette,
                                    groupValue: grpValue,
                                    onChanged: ((value) {
                                      grpValue = value!;
                                      setState(() {});
                                    })),
                                const Text('No'),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(54, 130, 54, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    // height: 26, width: 127,
                                    padding: const EdgeInsets.only(
                                        right: 4, left: 4, top: 6, bottom: 6),
                                    decoration: const BoxDecoration(
                                        color: Color.fromRGBO(54, 130, 54, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(0)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  54, 130, 54, 1),
                                              blurRadius: 5,
                                              spreadRadius: 5)
                                        ]),
                                    // width: double.infinity,
                                    child: const Center(
                                      child: Text(
                                        'CHOOSE WINNLNE BREAKUP',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Container(
                    height: 460,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          const Center(
                            child: Text(
                              'Already have an invitation ?',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                            child: Text(
                              'Enter the invitation code you received ?',
                              style: TextStyle(
                                  color: Color.fromRGBO(128, 128, 128, 1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 14.0, right: 12, top: 10),
                            child: TextFormField(
                              controller: contextCodeController,
                              decoration: InputDecoration(
                                  hintText: 'Enter the Contest code',
                                  hintStyle: const TextStyle(
                                      fontSize: 18,
                                      color: Color.fromRGBO(85, 82, 82, 1)),
                                  suffix: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                            width: 1.0,
                                            color:
                                                Color.fromRGBO(54, 130, 54, 1)),
                                      ),
                                      onPressed: () {},
                                      child: const Text('Search'))),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Text(
                                '(Enter invite code to join)',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(128, 128, 128, 1)),
                              )),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return WinningBreakPointScreen();
                              }));
                            },
                            child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(54, 130, 54, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      right: 4, left: 4, top: 6, bottom: 6),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(54, 130, 54, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0)),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(54, 130, 54, 1),
                                            blurRadius: 5,
                                            spreadRadius: 5)
                                      ]),
                                  child: const Center(
                                    child: Text(
                                      'Join This Contest',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }

  Widget customeTextFormField(TextEditingController controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        filled: false,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
