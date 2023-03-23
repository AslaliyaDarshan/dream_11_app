import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/aadhar_card/frontbackAadhar.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
        title:  Text(
          "KYC quick",
          style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima",),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(NotificationSettingScreen());
              }, icon:  Icon(Icons.notification_add_sharp,size: 20.sp,)),
          IconButton(
              onPressed: () {
                Get.to(MyAccountScreen());
              }, icon:  Icon(Icons.wallet_membership,size: 20.sp,)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4.w),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 4.w,
                ),
                 Text("Upload your Aadhaar Card" ,style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Container(
                    height: 23.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                        border: Border.all(color: Colors.grey, width: 5.sp)),
                  ),
                ),
                 SizedBox(
                  height: 2.h,
                ),
                 Center(
                  child: Text(
                    "Place your Aadhaar Card inside the frame",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 6.h,
                      width: 6.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: const Color.fromRGBO(78, 78, 78, 1),
                              width: 3)),
                      child:  Center(
                        child: CircleAvatar(
                          radius: 18.sp,
                          backgroundColor: Color.fromRGBO(78, 78, 78, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                  height: 6.h,
                ),
                Center(
                    child: GestureDetector(
                        onTap: () {
                          Get.to(UploadFrontBackAadhar());
                          //Navigator.push(context, MaterialPageRoute(builder: ((context) {return const UploadFrontBackAadhar();})));
                        },
                        child: innerShadowButtonWidget("Next",context, radius: 3.sp,width: 70.w)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
