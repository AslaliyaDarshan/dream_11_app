import 'package:dream_11_app/src/user/verification_document/verificationDocument.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';

class UploadFrontBackAadhar extends StatefulWidget {
  const UploadFrontBackAadhar({super.key});

  @override
  State<UploadFrontBackAadhar> createState() => _UploadFrontBackAadharState();
}

class _UploadFrontBackAadharState extends State<UploadFrontBackAadhar> {
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
                  height: 27,
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
                  "Front Side",
                  style: TextStyle(fontSize: 16),
                )),
                const SizedBox(
                  height: 10,
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
                  "Back Side",
                  style: TextStyle(fontSize: 16),
                )),
                const SizedBox(
                  height: 70,
                ),
                Center(
                    child: GestureDetector(
                        onTap: () {},
                        child: innerShadowButtonWidget("Retry",context, radius: 3))),
                const SizedBox(
                  height: 17,
                ),
                Center(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return VerificationDocumentScreen();
                          }));
                        },
                        child: innerShadowButtonWidget("Upload",context, radius: 3))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
