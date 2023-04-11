import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class JoinContextWidget extends StatefulWidget {
  const JoinContextWidget({super.key});

  @override
  State<JoinContextWidget> createState() => _JoinContextWidgetState();
}

class _JoinContextWidgetState extends State<JoinContextWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 3.w, right: 3.w, top: 1.h, bottom: 1.h),
          child: Container(
            height: 14.h,
            width: 100.w,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Color(0xFF272C56).withOpacity(0.2),spreadRadius: 2,blurRadius: 3),
              ],
                borderRadius: BorderRadius.circular(10.sp),color: Colors.white),
            child: Padding(
              padding:  EdgeInsets.only(top: 0.5.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 3.w),
                    child: Row(
                      children: [
                        Text('Pool prize',
                          style: TextStyle(
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 15.sp,fontFamily: "Imprima"),
                        ),
                        Spacer(),
                        Text(
                          'Entry',
                          style: TextStyle(
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 15.sp,fontFamily: "Imprima"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 3.w),
                    child: Row(
                      children: [
                         Text(
                          '₹15 Crores',
                          style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
                        ),
                        const Spacer(),
                        Container(
                          padding:  EdgeInsets.only(left: 3.w, right: 3.w, top: 0.5.h, bottom: 0.5.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.sp),
                              color: const Color.fromRGBO(54, 130, 54, 1)),
                          child:  Text(
                            '₹599',
                            style: TextStyle(color: Colors.white,fontSize: 15.sp,fontFamily: "Imprima"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 3.w),
                    child: Container(
                      height: 0.4.h,
                      width: 100.w,
                      decoration: const BoxDecoration(color: Color.fromRGBO(156, 215, 93, 1)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 0.4.h,
                            width: 20.w,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(27, 104, 0, 1)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 3.w),
                    child: Row(
                      children:  [
                        Text(
                          '3 spots left',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(54, 130, 54, 1),fontFamily: "Imprima"),
                        ),
                        Spacer(),
                        Text(
                          '7 spots',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Color.fromRGBO(128, 128, 128, 1),fontFamily: "Imprima"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 3.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
                      color: Color.fromRGBO(182, 182, 182, 1),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Image.asset(
                            AssetUtilities.award,
                            height: 2.h,
                            width:  2.h,
                          ),
                           SizedBox(
                            width: 1.5.w,
                          ),
                           Text(
                            '₹1crore',
                            style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
                          ),
                           SizedBox(
                            width: 2.w,
                          ),
                          Image.asset(
                            AssetUtilities.trophy,
                            height: 2.h,
                            width: 2.h,
                          ),
                           SizedBox(
                            width: 1.5.w,
                          ),
                           Text(
                            '71%',
                            style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
                          ),
                           SizedBox(
                            width: 2.w,
                          ),
                           Text(
                            'Upto 6',
                            style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
                          ),
                          const Spacer(),
                          Image.asset(
                            AssetUtilities.yes,
                            height: 2.h,
                            width: 2.h,
                          ),
                           SizedBox(
                            width: 2.w,
                          ),
                           Text(
                            'Guranteed',
                            style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
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
      ],
    );
  }
}
