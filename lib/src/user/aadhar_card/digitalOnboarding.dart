import 'package:dream_11_app/src/user/aadhar_card/selectIdproof_screen.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';

class AllowDennyScreen extends StatefulWidget {
  const AllowDennyScreen({super.key});

  @override
  State<AllowDennyScreen> createState() => _AllowDennyScreenState();
}

class _AllowDennyScreenState extends State<AllowDennyScreen> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Digital Onboarding",
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(children: const [
                  Text( 
                    "You are Providing your consent to share your Digilocker document with Digital Onboarding.",
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 200,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SelectIdProofScreen();
                            }));
                          },
                          child: innerShadowButtonWidget("Allow",context,)),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {}, child: innerShadowButtonWidget("Deny",context,)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
