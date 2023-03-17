import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/user/aadhar_card/aadharcard_otp.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:dream_11_app/widget/drawerWidget.dart';
import 'package:flutter/material.dart';

class AadharCard extends StatefulWidget {
  const AadharCard({super.key});

  @override
  State<AadharCard> createState() => _AadharCardState();
}

class _AadharCardState extends State<AadharCard> {
  TextEditingController adharController = TextEditingController();
  bool radioListTile = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerWidger(),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
        title: const Text(
          "KYC quick",
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NotificationSettingScreen();
                }));
              },
              icon: const Icon(Icons.notification_add_sharp)),
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
                    "You are about to link DigiLocker account with Digital Onbording application of bolder Technologies Private Liomited . You will be singned up for DigiLocker account if it does not exist",
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: adharController,
                  decoration: InputDecoration(
                    hintText: "Enter Adhaar Number*",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(144, 144, 144, 1))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(144, 144, 144, 1))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(144, 144, 144, 1))),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("Plese enter the following text in the box below:",
                    style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 58,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                      radioListTile = !radioListTile;
                      setState(() {});
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.grey, width: 2)),
                          child: radioListTile
                              ? Center(
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "I'am not robot",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 45,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const AadharCardOtp();
                            }));
                          },
                          child: innerShadowButtonWidget("Next",context,)),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          onTap: () {}, child: innerShadowButtonWidget("Back",context,)),
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
