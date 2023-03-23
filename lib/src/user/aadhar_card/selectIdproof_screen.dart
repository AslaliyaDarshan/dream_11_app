import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/aadhar_card/uploadAddharScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectIdProofScreen extends StatefulWidget {
  const SelectIdProofScreen({super.key});

  @override
  State<SelectIdProofScreen> createState() => _SelectIdProofScreenState();
}

class _SelectIdProofScreenState extends State<SelectIdProofScreen> {
  //int grpRadioValue = 0;
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
              }, icon:  Icon(Icons.wallet_membership,size: 20.sp)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h
                ),
                Center(
                  child: Container(
                    height: 28.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1.5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Padding(
                          padding: EdgeInsets.all(15.0.sp),
                          child: Text(
                            "Select ID Proof",
                            style: TextStyle(fontSize: 17.sp,fontFamily: "Imprima"),
                          ),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(left: 3.w),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  changeTheme(0, context);
                                  Get.to(UploadAdharScreen());
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) {return UploadAdharScreen();}));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 3.h,
                                      width:  3.h,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedIndex == 0 ? Colors.green : Colors.grey,
                                            width: 7.5.sp,
                                          ),
                                          borderRadius: BorderRadius.circular(50.sp)),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 10.5.sp,
                                          backgroundColor: selectedIndex == 0 ? Colors.green : Colors.grey,
                                        ),
                                      ),
                                    ),
                                     SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Aadhaar Card',
                                      style: TextStyle(
                                        fontSize: 18.sp,fontFamily: "Imprima",
                                        color: selectedIndex == 0 ? Colors.green : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                               SizedBox(
                                height: 2.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  changeTheme(1, context);
                                  Get.to(UploadAdharScreen());
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height:3.h,
                                      width: 3.h,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedIndex == 1
                                                ? Colors.green
                                                : Colors.grey,
                                            width: 7.5.sp,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50.sp)),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 10.5.sp,
                                          backgroundColor: selectedIndex == 1
                                              ? Colors.green
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                     SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Driving License',
                                      style: TextStyle(
                                        fontSize: 18.sp,fontFamily: "Imprima",
                                        color: selectedIndex == 1
                                            ? Colors.green
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                               SizedBox(
                                height: 2.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  changeTheme(2, context);
                                  Get.to(UploadAdharScreen());
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height:3.h,
                                      width: 3.h,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedIndex == 2
                                                ? Colors.green
                                                : Colors.grey,
                                            width: 7.5.sp,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50.sp)),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 10.5.sp,
                                          backgroundColor: selectedIndex == 2
                                              ? Colors.green
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                     SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Voter ID',
                                      style: TextStyle(fontFamily: "Imprima",
                                        fontSize: 18.sp,
                                        color: selectedIndex == 2
                                            ? Colors.green
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  changeTheme(3, context);
                                  Get.to(UploadAdharScreen());
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height:3.h,
                                      width: 3.h,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: selectedIndex == 3
                                                ? Colors.green
                                                : Colors.grey,
                                            width: 7.5.sp,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50.sp)),
                                      child: Center(
                                        child: CircleAvatar(
                                          radius: 10.5.sp,
                                          backgroundColor: selectedIndex == 3
                                              ? Colors.green
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                     SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Passport',
                                      style: TextStyle(fontFamily: "Imprima",
                                        fontSize: 18.sp,
                                        color: selectedIndex == 3
                                            ? Colors.green
                                            : Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int selectedIndex = 4;
  void changeTheme(index, BuildContext context) {
    selectedIndex = index;
    setState(() {});
  }
}
