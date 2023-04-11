import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReferScreen extends StatefulWidget {
  const ReferScreen({super.key});

  @override
  State<ReferScreen> createState() => _ReferScreenState();
}

class _ReferScreenState extends State<ReferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text('My Referrals',style: TextStyle(fontFamily: "Imprima",fontSize: 17.sp),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:4.w),
        child: Column(
          children: [
            Image.asset(
              AssetUtilities.referImage,
            ),
            SizedBox(
              height: 8.h,
              width: 100.w,
              child: Card(
                color: const Color.fromRGBO(237, 237, 237, 1),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text(
                            'Share invite code',
                            style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'IDCAJBEBGH98 ',
                                style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                              ),
                              Image.asset(
                                AssetUtilities.copy,
                                height: 2.h,
                                width: 2.h,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        AssetUtilities.whatsappicon,
                        height: 4.h,
                        width:  4.h,
                      ),
                       SizedBox(
                        width: 2.w,
                      ),
                      Image.asset(
                        AssetUtilities.moreicon,
                        height: 4.h,
                        width: 4.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 25.h,
              width: 100.w,
              child: Card(
                color: const Color.fromRGBO(237, 237, 237, 1),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Text(
                        'Earn upto ₹8000 for every referral',
                        style: TextStyle(
                          fontSize: 16.sp,fontFamily: "Imprima"
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(left: 10, top: 4),
                        child: Text(
                          '- Get ₹100 cash bonus after your friend verify their mobile number on CrickSwitch.',
                          style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                        ),
                      ),


                     Text(
                        'Kick off your friend’s CrickSwitch!',
                        style: TextStyle(
                            color: Color.fromRGBO(18, 117, 33, 1),
                            fontSize: 16.sp,fontFamily: "Imprima"),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 13.h,
                            width: 35.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 2.5.h,
                                  width:  35.w,
                                  color: const Color.fromRGBO(217, 217, 217, 1),
                                  child:  Center(
                                      child: Text(
                                    'Both of you get',
                                    style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                                    height:8.5.h,
                                    width: 35.w,
                                    color: Colors.white,
                                    child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Txt("100"),
                                        Txt("200"),
                                        Txt("3000"),
                                        Txt("4600"),
                                      ],
                                    ),
                                  ),
                               ],
                             ),
                          ),
                          SizedBox(
                            height: 13.h,
                            width: 35.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:2.5.h,
                                  width: 35.w,
                                  color: const Color.fromRGBO(217, 217, 217, 1),
                                  child:  Center(
                                      child: Text(
                                        'If your friend invite',
                                    style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                                  )),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                                    height: 8.5.h,
                                    width:  35.w,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Txt("100"),
                                        Txt("200"),
                                        Txt("3000"),
                                        Txt("4600"),
                                      ],
                                    ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
             SizedBox(height: 2.h,),
            Container(
              height: 4.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color: Colors.black, width: 0.5)),
              child:  Center(
                child: Text(
                  'You haven’t invited any friends yet',
                  style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Container(
              height: 4.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color: Colors.black, width: 0.5)),
              child:  Center(
                child:Text(
                  'INVITE PHONE CONTECTS',
                  style: TextStyle(
                      fontSize: 14.sp, color: Color.fromRGBO(11, 132, 11, 1),fontFamily: "Imprima"),
                ),
              ),
            ),
             SizedBox(
              height: 4.h,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                },
                child: Container(
                  height: 3.h,
                  width:35.w,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(178, 233, 159, 1),
                      borderRadius: BorderRadius.circular(10.sp)),
                  child: Center(
                    child: RichText(
                      text:  TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "PER FRIEND",
                                style: TextStyle(
                                    fontSize: 16.sp,fontFamily: "Imprima",
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ],
                          text: "₹551",
                          style: TextStyle(fontFamily: "Imprima",
                              fontSize: 16.sp,
                              color: Color.fromRGBO(255, 0, 0, 1))),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget Txt(String txt){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(
          '₹',
          style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
        ),
        Text(
          txt,
          style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
        ),
      ],
    );
  }
}
