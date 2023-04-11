import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/aadhar_card/attachAddharScreen.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
        title:  Text(
          "KYC quick",
          style: TextStyle(fontSize: 17.sp,fontFamily: "Imprima"),
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
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 2.h,
            ),
             Text(
              "Upload your Aadhaar Card",
              style: TextStyle(fontSize: 17.sp,fontFamily: "Imprima"),
            ),
             Text(
              "Plese upload the front & back side of your Aadhaar Card",
              style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
            ),
             SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "Step 1",
                  style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
                ),
                Container(
                  height: 18.h,
                  width: 70.w,
                  color: const Color.fromRGBO(217, 217, 217, 1),
                ),
              ],
            ),
             SizedBox(
              height: 1.5.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height:4.h,
                  width: 70.w,
                  decoration:  BoxDecoration(
                      color: Color.fromRGBO(54, 130, 54, 1),
                      borderRadius: BorderRadius.all(Radius.circular(13.sp)),
                      boxShadow: [
                        BoxShadow(color: Color.fromRGBO(54, 130, 54, 1), spreadRadius: 5)
                      ]),
                  child:  Center(
                    child: Text(
                      "Upload Front",
                      style: TextStyle(
                        fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,fontFamily: "Imprima"),
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "Step 2",
                  style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
                ),
                Container(
                  height: 18.h,
                  width: 70.w,
                  color: const Color.fromRGBO(217, 217, 217, 1),
                ),
              ],
            ),
             SizedBox(
              height: 1.5.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 4.h,
                  width: 70.w,
                  decoration:  BoxDecoration(
                      color: Color.fromRGBO(54, 130, 54, 1),
                      borderRadius: BorderRadius.all(Radius.circular(13.sp)),
                      boxShadow: [BoxShadow(color: Color.fromRGBO(54, 130, 54, 1), spreadRadius: 5)]),
                  child:  Center(
                    child: Text(
                      "Upload Bake",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,fontFamily: "Imprima",fontSize: 16.sp),
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height:10.h,
            ),
            Center(
                child: GestureDetector(
                    onTap: () {
                      Get.to(AttachAadharScreen());
                      //Navigator.push(context, MaterialPageRoute(builder: (context) {return const AttachAadharScreen();}));
                    },
                    child: innerShadowButtonWidget("Next",context, radius: 10,width: 70.w)))
          ],
        ),
      ),
    );
  }
}
