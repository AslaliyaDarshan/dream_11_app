import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/user/aadhar_card/aadharcard_otp.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:dream_11_app/widget/drawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
    late double hsize = MediaQuery.of(context).size.height;
    late double wsize = MediaQuery.of(context).size.width;
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
          style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                Get.to(NotificationSettingScreen());
                //Navigator.push(context, MaterialPageRoute(builder: (context) {return const NotificationSettingScreen();}));
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
                 SizedBox(
                   height:hsize*0.03,
                 ),
                const AutoSizeText(
                  "Digital Onboarding",
                  style: TextStyle(fontSize: 25,fontFamily: "Imprima"),
                ),
                 SizedBox(
                   height:hsize*0.025,
                 ),
                Wrap(children: const [
                  AutoSizeText(
                    "You are about to link DigiLocker account with Digital Onbording application of bolder Technologies Private Liomited . You will be singned up for DigiLocker account if it does not exist",
                    style: TextStyle(fontSize: 20,fontFamily: "Imprima"),
                  ),
                ]),
                 SizedBox(
                  height:hsize*0.03,
                ),
                TextFormField(
                  controller: adharController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(12),
                  ],
                  style: TextStyle(fontFamily: "Imprima"),
                  decoration: InputDecoration(
                    hintText: "Enter Adhaar Number*",
                    hintStyle: TextStyle(fontFamily: "Imprima"),
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
                 SizedBox(
                  height: hsize*0.015,
                ),
                const AutoSizeText("Plese enter the following text in the box below:",
                    style: TextStyle(fontSize: 20,fontFamily: "Imprima")),
                 SizedBox(
                  height: hsize*0.07,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: wsize*0.01),
                  child: GestureDetector(
                    onTap: () {
                      radioListTile = !radioListTile;
                      setState(() {});
                    },
                    child: Row(
                      children: [
                        Container(
                          height: hsize*0.03,
                          width: hsize*0.03,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.grey,width: 2)),
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
                         SizedBox(
                          width: wsize*0.03,
                        ),
                        const AutoSizeText(
                          "I'am not robot",
                          style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                       SizedBox(
                        height: hsize*0.07,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(AadharCardOtp());
                            //Navigator.push(context, MaterialPageRoute(builder: (context) {return const AadharCardOtp();}));
                          },
                          child: innerShadowButtonWidget("Next",context,height: 0.04,width: 0.6)),
                       SizedBox(
                        height: hsize*0.025,
                      ),
                      GestureDetector(
                          onTap: () {}, child: innerShadowButtonWidget("Back",context,height: 0.04,width: 0.6)),
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
