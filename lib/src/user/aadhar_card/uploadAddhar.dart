import 'package:dream_11_app/src/user/aadhar_card/frontbackAadhar.dart';
import 'package:dream_11_app/src/user/aadhar_card/uploadAddharScreen.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';

class UploadAadhar extends StatefulWidget {
  const UploadAadhar({super.key});

  @override
  State<UploadAadhar> createState() => _UploadAadharState();
}

class _UploadAadharState extends State<UploadAadhar> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text("Upload your Aadhaar Card"),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Center(
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 2)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "Place your Aadhaar Card inside the frame",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5.5,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: const Color.fromRGBO(78, 78, 78, 1),
                              width: 3)),
                      child: const Center(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromRGBO(78, 78, 78, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 46,
                ),
                Center(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const UploadFrontBackAadhar();
                          })));
                        },
                        child: innerShadowButtonWidget("Next",context, radius: 3)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
