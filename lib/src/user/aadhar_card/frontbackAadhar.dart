import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/verification_document/verificationDocument.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
          padding:  EdgeInsets.symmetric( horizontal: 4.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 3.h,
                ),
                Center(
                  child: Container(
                    height: 22.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.sp),
                        border: Border.all(color: Colors.grey, width: 6.sp)),
                  ),
                ),
                 SizedBox(
                  height: 1.5.h,
                ),
                 Center(
                    child: Text(
                  "Front Side",
                  style: TextStyle(fontSize: 16.sp),
                )),
                 SizedBox(
                  height: 1.5.h,
                ),
                Center(
                  child: Container(
                    height: 22.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.sp),
                        border: Border.all(color: Colors.grey, width: 6.sp)),
                  ),
                ),
                 SizedBox(
                  height: 1.5.h,
                ),
                 Center(
                    child: Text(
                  "Back Side",
                  style: TextStyle(fontSize: 16.sp),
                )),
                 SizedBox(
                  height: 15.h,
                ),
                Center(
                    child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: innerShadowButtonWidget("Retry",context, radius: 6.sp,width: 70.w))),
                 SizedBox(
                  height: 2.h,
                ),
                Center(
                    child: GestureDetector(
                        onTap: () {
                          Get.to(VerificationDocumentScreen());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return VerificationDocumentScreen();}));
                        },
                        child: innerShadowButtonWidget("Upload",context, radius: 6.sp,width: 70.w))),
                SizedBox(height: 1.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
