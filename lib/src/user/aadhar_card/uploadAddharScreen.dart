import 'package:dream_11_app/src/user/aadhar_card/attachAddharScreen.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UploadAdharScreen extends StatefulWidget {
  const UploadAdharScreen({super.key});

  @override
  State<UploadAdharScreen> createState() => _UploadAdharScreenState();
}

class _UploadAdharScreenState extends State<UploadAdharScreen> {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 17.0, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Upload your Aadhaar Card",
              style: TextStyle(fontSize: 17),
            ),
            const Text(
              "Plese upload the front & back side of your Aadhaar Card",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 33,
            ),
            Row(
              children: [
                const Text(
                  "Step 1",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: const Color.fromRGBO(217, 217, 217, 1),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 73.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(54, 130, 54, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 26,
                        width: MediaQuery.of(context).size.width * 0.7 - 10,
                        padding: const EdgeInsets.only(
                            right: 4, left: 4, top: 6, bottom: 6),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(54, 130, 54, 1),
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(54, 130, 54, 1),
                                  blurRadius: 5,
                                  spreadRadius: 5)
                            ]),
                        // width: double.infinity,
                        child: const Center(
                          child: Text(
                            "Upload Front",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                )),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  "Step 2",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: const Color.fromRGBO(217, 217, 217, 1),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 73.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(54, 130, 54, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 26,
                        width: MediaQuery.of(context).size.width * 0.7 - 10,
                        padding: const EdgeInsets.only(
                            right: 4, left: 4, top: 6, bottom: 6),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(54, 130, 54, 1),
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(54, 130, 54, 1),
                                  blurRadius: 5,
                                  spreadRadius: 5)
                            ]),
                        // width: double.infinity,
                        child: const Center(
                          child: Text(
                            "Upload Bake",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                )),
            const SizedBox(
              height: 79,
            ),
            Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AttachAadharScreen();
                      }));
                    },
                    child: innerShadowButtonWidget("Next",context, radius: 10)))
          ],
        ),
      ),
    );
  }
}
