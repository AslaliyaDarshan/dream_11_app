import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/aadhar_card/aadharcard_otp.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:dream_11_app/widget/drawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
            icon:  Icon(Icons.menu,size: 20.sp,)),
        title:  Text(
          "KYC quick",
          style: TextStyle(fontSize: 17.sp,fontFamily: "Imprima"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(NotificationSettingScreen());
                //Navigator.push(context, MaterialPageRoute(builder: (context) {return const NotificationSettingScreen();}));
              },
              icon: const Icon(Icons.notification_add_sharp)),
          IconButton(
              onPressed: () {
                Get.to(MyAccountScreen());
              }, icon: const Icon(Icons.wallet_membership)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                   height:3.h,
                 ),
               Text(
                  "Digital Onboarding",
                  style: TextStyle(fontSize: 22.sp,fontFamily: "Imprima"),
                ),
                 SizedBox(
                   height:3.h
                 ),
                Wrap(children:  [
                  Text(
                    "You are about to link DigiLocker account with Digital Onbording application of bolder Technologies Private Liomited . You will be singned up for DigiLocker account if it does not exist",
                    style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
                  ),
                ]),
                 SizedBox(
                  height:3.h,
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
                    hintStyle: TextStyle(fontFamily: "Imprima",fontSize: 16.sp),
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
                  height: 3.h,
                ),
                Text("Plese enter the following text in the box below:",
                    style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima")),
                 SizedBox(
                  height: 6.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 2.w),
                  child: GestureDetector(
                    onTap: () {
                      radioListTile = !radioListTile;
                      setState(() {});
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 3.h,
                          width: 3.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100.sp),
                              border: Border.all(color: Colors.grey,width: 6.sp)),
                          child: radioListTile
                              ? Center(
                                  child: Container(
                                    height: 2.h,
                                    width: 2.h,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(30.sp)),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),
                         SizedBox(
                          width: 3.w
                        ),
                        Text(
                          "I'am not robot",
                          style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                       SizedBox(
                        height:7.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(AadharCardOtp());
                            //Navigator.push(context, MaterialPageRoute(builder: (context) {return const AadharCardOtp();}));
                          },
                          child: innerShadowButtonWidget("Next",context,height: 4.h,width: 60.w)),
                       SizedBox(
                        height: 2.5.h
                      ),
                      GestureDetector(
                          onTap: () {}, child: innerShadowButtonWidget("Back",context,height: 4.h,width:60.w)),
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
