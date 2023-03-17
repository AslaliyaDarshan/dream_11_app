import 'package:dream_11_app/src/user/aadhar_card/uploadAddharScreen.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';

class SelectIdProofScreen extends StatefulWidget {
  const SelectIdProofScreen({super.key});

  @override
  State<SelectIdProofScreen> createState() => _SelectIdProofScreenState();
}

class _SelectIdProofScreenState extends State<SelectIdProofScreen> {
  int grpRadioValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text(
          "KYC quick",
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add_sharp)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.wallet_membership)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                ),
                Center(
                  child: Container(
                    height: 225,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1.5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Select ID Proof",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  changeTheme(0, context);
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return UploadAdharScreen();
                                  }));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 23,
                                      width: 23,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedIndex == 0
                                                ? Colors.green
                                                : Colors.grey,
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 6,
                                          backgroundColor: selectedIndex == 0
                                              ? Colors.green
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Aadhaar Card',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selectedIndex == 0
                                            ? Colors.green
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  changeTheme(1, context);
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 23,
                                      width: 23,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedIndex == 1
                                                ? Colors.green
                                                : Colors.grey,
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 6,
                                          backgroundColor: selectedIndex == 1
                                              ? Colors.green
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Driving License',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selectedIndex == 1
                                            ? Colors.green
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  changeTheme(2, context);
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 23,
                                      width: 23,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedIndex == 2
                                                ? Colors.green
                                                : Colors.grey,
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 6,
                                          backgroundColor: selectedIndex == 2
                                              ? Colors.green
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Voter ID',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selectedIndex == 2
                                            ? Colors.green
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  changeTheme(3, context);
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 23,
                                      width: 23,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedIndex == 3
                                                ? Colors.green
                                                : Colors.grey,
                                            width: 3,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 6,
                                          backgroundColor: selectedIndex == 3
                                              ? Colors.green
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Passport',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: selectedIndex == 3
                                            ? Colors.green
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
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
    );
  }

  int selectedIndex = 0;
  void changeTheme(index, BuildContext context) {
    selectedIndex = index;
    setState(() {});
  }
}
