import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/user/aadhar_card/uploadAddhar.dart';
import 'package:dream_11_app/widget/drawerWidget.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';

class AttachAadharScreen extends StatefulWidget {
  const AttachAadharScreen({super.key});

  @override
  State<AttachAadharScreen> createState() => _AttachAadharScreenState();
}

class _AttachAadharScreenState extends State<AttachAadharScreen> {
  int grpRadioValue = 0;
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
        }, icon: const Icon(Icons.menu)),
        title:  Text("KYC quick", style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
        ),
        actions: [
          IconButton(onPressed: () {
            Get.to(NotificationSettingScreen());
          }, icon: Icon(Icons.notification_add_sharp,size: 20.sp,)),
          IconButton(onPressed: () {
            Get.to(MyAccountScreen());
          }, icon: Icon(Icons.wallet_membership,size: 20.sp,)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 2.h,
                ),
                 Text("Upload your Aadhaar Card",style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),),
                SizedBox(
                  height:50.h,
                ),
                Center(
                  child: Container(
                    height: 25.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                        border: Border.all(color: Colors.grey, width:5.sp)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Padding(
                          padding: EdgeInsets.all(15.0.sp),
                          child: Text(
                            "Upload Front Image",
                            style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                          ),
                        ),

                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // changeTheme(0, context);
                                  Get.to(UploadAadhar());
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) {return const UploadAadhar();}));
                                },
                                child: Row(
                                  children:  [
                                    Icon(
                                      Icons.camera_alt_outlined,
                                      color: Color.fromRGBO(27, 104, 0, 1),
                                      size: 23.sp,

                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      'Click Photo',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.black,
                                          fontFamily: "Imprima"
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 19.sp,
                                    ),
                                  ],
                                ),
                              ),
                               SizedBox(
                                height: 2.h,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(UploadAadhar());
                                },
                                child: Row(
                                  children:  [
                                    Icon(
                                      Icons.attach_file,
                                      color: Color.fromRGBO(27, 104, 0, 1),
                                      size: 23.sp,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      'Attach File',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.black,
                                          fontFamily: "Imprima"
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 19.sp,
                                    ),
                                  ],
                                ),
                              ),
                               SizedBox(
                                height: 3.h,
                              ),
                               Center(
                                child: Text(
                                  "Size - Less than 5mb | Format- JPEG,PNG,PDF",
                                  style: TextStyle(fontSize: 15.2.sp,overflow: TextOverflow.ellipsis,fontFamily: "Imprima",),
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
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
}
