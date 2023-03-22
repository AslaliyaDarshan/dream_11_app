import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SupportScreen extends StatefulWidget {
  SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFE2E2E2),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text('Support',style: TextStyle(fontSize: 18.sp),),
      ),
      body: Column(
        children: [
          Image.asset(AssetUtilities.support),
           Text(
            'Feel free to contact us at:',
            style: TextStyle(fontSize: 20.sp),
          ),
           SizedBox(
            height: 4.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w),
            child: SizedBox(
              height:  9.h,
              width: 100.w,
              child: Card(
                child: Row(
                  children: [
                     SizedBox(
                      width: 4.w,
                    ),
                    CircleAvatar(
                      radius: 20.sp,
                      backgroundColor: const Color.fromRGBO(255, 196, 160, 1),
                      child: Center(
                        child: Image.asset(
                          AssetUtilities.chat,
                          height:3.h,
                          width: 3.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            'Chat with Us:',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          Text(
                            'We are live and ready to help!',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Color.fromRGBO(168, 168, 168, 1)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w),
            child: SizedBox(
              height: 9.h,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Row(
                  children: [
                     SizedBox(
                      width: 4.w,
                    ),
                    CircleAvatar(
                      radius: 20.sp,
                      backgroundColor: const Color.fromRGBO(160, 210, 255, 1),
                      child: Center(
                        child: Image.asset(
                          AssetUtilities.message,
                          height: 3.h,
                          width: 3.h,
                        ),
                      ),
                    ),
                     SizedBox(
                      width: 4.w,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email Us:',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          Text(
                            'support@CrickSwitch.com',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Color.fromRGBO(168, 168, 168, 1)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
           SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Sos(AssetUtilities.facebook1),
              Sos(AssetUtilities.youtube),
              Sos(AssetUtilities.instgram),
              Sos(AssetUtilities.twitter),
              Sos(AssetUtilities.telegram),
            ],
          ),
        ],
      ),
    );
  }
  Widget Sos(String image1){
    return Image.asset(
      image1,
      height: 6.h,
      width: 6.h,
    );
  }
}
