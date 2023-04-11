import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/aadhar_card/digitalOnboarding.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:dream_11_app/widget/drawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AadharCardOtp extends StatefulWidget {
  const AadharCardOtp({super.key});

  @override
  State<AadharCardOtp> createState() => _AadharCardOtpState();
}

class _AadharCardOtpState extends State<AadharCardOtp> {
  TextEditingController otpController = TextEditingController();
  bool radioListTile = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerWidger(),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        leading: IconButton(onPressed: () {
          _scaffoldKey.currentState!.openDrawer();
        }, icon:  Icon(Icons.menu,size: 20.sp,)),
        title:  Text(
          "KYC quick",
          style: TextStyle(fontSize: 17.sp,fontFamily: "Imprima"),
        ),
        actions: [
          IconButton(
              onPressed: () {Get.to(NotificationSettingScreen());}, icon:  Icon(Icons.notification_add_sharp,size: 20.sp,)),
          IconButton(
              onPressed: () {Get.to(MyAccountScreen());}, icon:  Icon(Icons.wallet_membership,size: 20.sp,)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:3.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 3.h,
                ),
                 Text(
                  "Digital Onboarding",
                  style: TextStyle(fontSize: 22.sp,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: 3.h,
                ),
                Wrap(children:  [
                  Text(
                    "UIDAI has send a temporary OTP to your mobile ending in*******xxxx ( valid for 10 mins)",
                    style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
                  ),
                ]),
                 SizedBox(
                  height: 3.h,
                ),
                TextFormField(
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(6),
                  ],
                  decoration: InputDecoration(
                    hintText: "Enter 6 digit OTP",
                    hintStyle: TextStyle(fontSize: 17.sp,fontFamily: "Imprima"),
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
                  height: 7.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 3.w),
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
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.grey, width: 2)),
                          child: radioListTile
                              ? Center(
                                  child: Container(
                                    height: 2.h,
                                    width: 2.h,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ),
                         SizedBox(
                          width: 2.w,
                        ),
                         Text(
                          "I'am not robot",
                          style: TextStyle(fontSize: 17.sp,fontFamily: "Imprima"),
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                       SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(AllowDennyScreen());
                            //Navigator.push(context, MaterialPageRoute(builder: (context) {return const AllowDennyScreen();}));
                          },
                          child: innerShadowButtonWidget("Next",context,width: 60.w)),
                       SizedBox(
                        height: 2.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          }, child: innerShadowButtonWidget("Back",context,width: 60.w,)),
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
