import 'package:dream_11_app/src/verificationScreen/aadhaarVerification_screen.dart';
import 'package:dream_11_app/src/verificationScreen/bankVerificationScreen.dart';
import 'package:dream_11_app/src/verificationScreen/panCardverification.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';


class TabBarWidget extends StatefulWidget {
   Function() onTap;
  TabBarWidget({Key? key, required this.onTap}) : super(key: key);
  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height:1.5.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Container(
              height: 4.h,
              padding:  EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: const Color.fromRGBO(0, 100, 0, 1)),
              child: Row(
                children: [
                  Image.asset(
                    AssetUtilities.percentageIcon,
                    height: 3.2.h,
                    width: 3.2.h,
                  ),
                   SizedBox(
                    width: 2.w,
                  ),
                   Text(
                    "Verify Bank/UPI and Earn Rs.100 Bonus!",
                    style: TextStyle(fontSize: 15.sp, color: Colors.white,fontFamily: "Imprima"),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AssetUtilities.phone,
                  height: 3.8.h,
                  width: 3.8.h,
                ),
                 SizedBox(
                  width: 3.w
                ),
                 Text(
                  "Phone :-",
                  style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  width: 1.w,
                ),
                 Text(
                  "+91 11223 34455",
                  style: TextStyle(
                      color: Color.fromRGBO(128, 128, 128, 1), fontSize: 17.sp,fontFamily: "Imprima"),
                ),
                 Expanded(
                    child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 100, 0, 1,),
                  radius: 15.sp,
                  child: Center(
                      child: Icon(
                    Icons.check,
                    size: 18.sp,
                  )),
                )),
              ],
            ),
          ),
           SizedBox(height: 1.h,),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Center(
                child: Text(
              textAlign: TextAlign.center,
              "**Please verify ypur mobile , email , Pan and set security pin first in order to verify your Bank**",
              style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
            )),
          ),
          Image.asset(
            AssetUtilities.contactUs,
            height: 33.h,
            width: 90.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              Text(
                "+ 18 Year",
                style: TextStyle(
                    color: Color.fromRGBO(255, 0, 0, 1), fontSize: 19.sp,fontFamily: "Imprima"),
              ),
              SizedBox(
                width: 3.w,
              ),
            ],
          ),
          Container(
            height: 24.h,
            width:  100.w,
            margin:  EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(offset: Offset(4, 4),color: Color(0xFFD2D2D2),blurRadius: 1),
              ],
                color: const Color.fromRGBO(205, 219, 121, 1),
                borderRadius: BorderRadius.circular(8.sp)),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                   Text(
                    "Important Information",
                    style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          "Bank verification usually takes less then 1 hour , in case of manual verification it can take up to 72 hours.",
                          style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          "You can verify any one or both among bank and UPI to withdraw money.",
                          style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          """Need help ? \nMail us at help@crickswitch.com , or call customer Support : +91 9986734993""",
                          style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.5.h),
          Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                    height: 4.5.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
                          ),
                          Icon(Icons.arrow_forward,size: 20.sp,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarWidget2 extends StatefulWidget {
  Function() onTap;
  TabBarWidget2({Key? key, required this.onTap}) : super(key: key);

  @override
  State<TabBarWidget2> createState() => _TabBarWidget2State();
}

class _TabBarWidget2State extends State<TabBarWidget2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1.5.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Container(
              height: 4.h,
              padding:   EdgeInsets.only(left: 2.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: const Color.fromRGBO(0, 100, 0, 1)),
              child: Row(
                children: [
                  Image.asset(
                    AssetUtilities.percentageIcon,
                    height: 3.2.h,
                    width: 3.2.h,
                  ),
                   SizedBox(
                    width: 2.w,
                  ),
                   Text(
                    "Verify Bank/UPI and Earn Rs.100 Bonus!",
                    style: TextStyle(fontSize: 15.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
           SizedBox(height: 1.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 17.sp,
                  backgroundColor: const Color.fromRGBO(211, 85, 222, 1),
                  child: Image.asset(
                    AssetUtilities.emailIcon,
                    height: 3.h,
                    width: 3.h,
                  ),
                ),
                 SizedBox(
                  width: 3.w,
                ),
                 Text(
                  "Email :-",
                  style: TextStyle(fontSize: 18.sp),
                ),
                const Spacer(),
                 CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 100, 0, 1,),
                  radius: 15.sp,
                  child: Center(
                   child: Icon(
                 Icons.check,
                 size: 18.sp,
                  )),
                ),
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 60.0),
            child: Text(
              "- Cricketswitch112@gmail.com",
              style: TextStyle(
                  color: Color.fromRGBO(128, 128, 128, 1), fontSize: 17.sp),
            ),
          ),
           SizedBox(
            height: 1.h,
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Center(
                child: Text(
              textAlign: TextAlign.center,
              "**Please verify your mobile and email first in order to verify you Email**",
              style: TextStyle(fontSize: 15.sp),
            )),
          ),
          Image.asset(
            AssetUtilities.emailMarketing,
            height:33.h,
            width: 90.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              Text(
                "+ 18 Year",
                style: TextStyle(
                    color: Color.fromRGBO(255, 0, 0, 1), fontSize: 19.sp),
              ),
              SizedBox(
                width: 3.h,
              ),
            ],
          ),
          Container(
            height: 24.h,
            width: 100.w,
            margin:  EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(offset: Offset(4, 4),color: Color(0xFFD2D2D2),blurRadius: 1),
                ],
                color: const Color.fromRGBO(205, 219, 121, 1),
                borderRadius: BorderRadius.circular(8.sp)),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                   Text(
                    "Important Information",
                    style: TextStyle(fontSize: 14.sp),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          "Provide your own EMAIL, in case of any mismatch your verification will be rejected.",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          "Email verification is necessary in order to withdraw money",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          " Set a security pin and remember it , it will be asked during the withdrawals",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          """Need help ? \nMail us at help@crickswitch.com , or call customer Support : +91 9986734993""",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
           SizedBox(height: 1.5.h),
          Padding(
            padding:  EdgeInsets.only(right: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap:widget.onTap,
                  child: Container(
                    height: 4.5.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          Text(
                            "Next",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          Icon(Icons.arrow_forward,size: 20.sp)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarWidget3 extends StatefulWidget {
  Function() onTap;
  TabBarWidget3({Key? key, required this.onTap}) : super(key: key);

  @override
  State<TabBarWidget3> createState() => _TabBarWidget3State();
}

class _TabBarWidget3State extends State<TabBarWidget3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Container(
              height: 4.h,
              padding:  EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: const Color.fromRGBO(0, 100, 0, 1)),
              child: Row(
                children: [
                  Image.asset(
                    AssetUtilities.percentageIcon,
                    height: 3.2.h,
                    width: 3.2.h,
                  ),
                   SizedBox(
                    width: 2.w,
                  ),
                   Text(
                    "Verify Bank/UPI and Earn Rs.100 Bonus!",
                    style: TextStyle(fontSize: 15.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
           SizedBox(height: 1.h),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 17.sp,
                  backgroundColor: const Color.fromRGBO(156, 216, 92, 1),
                  child: Image.asset(
                    AssetUtilities.pancardIcon,
                    height: 3.1.h,
                    width: 3.1.h,
                  ),
                ),
                 SizedBox(
                  width: 3.w,
                ),
                 Text(
                  "Pan Card :- ******",
                  style: TextStyle(fontSize: 18.sp),
                ),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.sp)),
                        backgroundColor: const Color.fromRGBO(0, 100, 0, 1)),
                    onPressed: () {
                      Get.to(PasswordVerificationScreen());
                     // Navigator.push(context, MaterialPageRoute(builder: (context) {return const PasswordVerificationScreen();}));
                    },
                    child:  Padding(
                      padding: EdgeInsets.all(13.sp),
                      child: Text("Verify",style: TextStyle(fontSize: 15.sp),),
                    ),
                ),
              ],
            ),
          ),
           SizedBox(
            height: 1.h,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20),
            child: Center(
                child: Text(
              textAlign: TextAlign.center,
              "**Please verify your mobile and email first in order to verify you PAN**",
              style: TextStyle(fontSize: 13),
            )),
          ),

          Image.asset(
            "assets/images/pancardImage.png",
            height:30.h ,
            width: 90.w,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              Text(
                "+ 18 Year",
                style: TextStyle(
                    color: Color.fromRGBO(255, 0, 0, 1), fontSize: 20),
              ),
              SizedBox(
                width: 3.w,
              ),
            ],
          ),
          Container(
            height: 25.h,
            width: 100.w,
            margin:  EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(offset: Offset(4, 4),color: Color(0xFFD2D2D2),blurRadius: 1),
                ],
                color: const Color.fromRGBO(205, 219, 121, 1),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Important Information",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          "Provide your own PAN, in case of any mismatch your verification will be rejected.",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          "Set a security pin and remember it , it will be asked during the withdrawals",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          "PAN verification is necessary in order to withdraw money",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left: 3.w,top: 0.5.h),
                        child: CircleAvatar(
                            radius: 7.sp, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Flexible(
                        child: Text(
                          """Need help ? \nMail us at help@crickswitch.com , or call customer Support : +91 9986734993""",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
           SizedBox(height: 1.5.h),
          Padding(
            padding:  EdgeInsets.only(right: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                    height: 4.5.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          Text(
                            "Next",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          Icon(Icons.arrow_forward,size: 20.sp,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarWidget4 extends StatefulWidget {
  Function() onTap;
  TabBarWidget4({Key? key, required this.onTap}) : super(key: key);

  @override
  State<TabBarWidget4> createState() => _TabBarWidget4State();
}

class _TabBarWidget4State extends State<TabBarWidget4> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Container(
              height: 30,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(0, 100, 0, 1)),
              child: Row(
                children: [
                  Image.asset(
                    AssetUtilities.percentageIcon,
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text(
                    "Verify Bank/UPI and Earn Rs.100 Bonus!",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Row(
              children: [
                Image.asset(AssetUtilities.aadharIcon, height: 33),
                const SizedBox(
                  width: 14,
                ),
                const Text(
                  "Address Proof:- *****",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: const Color.fromRGBO(0, 100, 0, 1)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AadhaarVerificationScreen();
                      }));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Verify"),
                    )),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20),
            child: Center(
                child: Text(
              textAlign: TextAlign.center,
              "**Please verify your mobile and email first in order to verify you PAN**",
              style: TextStyle(fontSize: 13),
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            AssetUtilities.aadhaarImage,
            height: 194,
            width: 300,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "+ 18 Year",
                style: TextStyle(
                    color: Color.fromRGBO(255, 0, 0, 1), fontSize: 20),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          Container(
            height: 215,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 24, right: 24),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(205, 219, 121, 1),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Important Information",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                            radius: 2, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          "Provide your own Address, in case of any mismatch your verification will be rejected.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                            radius: 2, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          "Address verification is necessary in order to withdraw money",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                            radius: 2, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          "Set a security pin and remember it , it will be asked during the withdrawals",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                            radius: 2, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          """Need help ? \nMail us at help@crickswitch.com , or call customer Support : +91 9986734993""",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap:
                    widget.onTap,
                  child: Container(
                    height: 38,
                    width: 99,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Next",
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class TabBarWidget5 extends StatefulWidget {
  Function() onTap;
  TabBarWidget5({Key? key, required this.onTap}) : super(key: key);

  @override
  State<TabBarWidget5> createState() => _TabBarWidget5State();
}

class _TabBarWidget5State extends State<TabBarWidget5> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Container(
              height: 30,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(0, 100, 0, 1)),
              child: Row(
                children: [
                  Image.asset(
                    AssetUtilities.percentageIcon,
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text(
                    "Verify Bank/UPI and Earn Rs.100 Bonus!",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color.fromRGBO(246, 82, 171, 0.6),
                  child: Image.asset(
                    AssetUtilities.bankIcon,
                    height: 22,
                    width: 22,
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                const Text(
                  "Bank:- ****",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 0.18)),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: const Color.fromRGBO(0, 100, 0, 0.44)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const bankVerificationScreen();
                      }));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Verify"),
                    )),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20),
            child: Center(
                child: Text(
              textAlign: TextAlign.center,
              "**Please verify your mobile and email first in order to verify you PAN**",
              style: TextStyle(fontSize: 13),
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            AssetUtilities.bankImage,
            height: 245,
            width: 327,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 225,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 24, right: 24),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(205, 219, 121, 1),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Important Information",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                            radius: 2, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          "Bank verification usually takes less than 1 hour , in case of manual verification it can take up to 72hours.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                            radius: 2, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          "You can verify any one or both among bank and UPI to withdraw money.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                            radius: 2, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          "in case of any query contect our customer support team.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                            radius: 2, backgroundColor: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          """Need help ? \nMail us at help@crickswitch.com , or call customer Support : +91 9986734993""",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap:
                    widget.onTap,
                  child: Container(
                    height: 38,
                    width: 99,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Next",
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
