// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';

class bankVerificationScreen extends StatefulWidget {
  const bankVerificationScreen({super.key});

  @override
  State<bankVerificationScreen> createState() => _bankVerificationScreenState();
}

class _bankVerificationScreenState extends State<bankVerificationScreen> {
  TextEditingController accountnumberController = TextEditingController();
  TextEditingController ifscController = TextEditingController();
  TextEditingController retryAccountNumberController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController branchNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 224, 196, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back,size: 20.sp,)),
            Center(
              child: Image.asset(
                AssetUtilities.bankImage,
                height: 22.h,
                width: 22.h,
              ),
            ),
            Container(
              height: 68.h,
              width:200.w,
              decoration: BoxDecoration(
                  color:  Color.fromRGBO(224, 224, 224, 1),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.sp))),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.sp,
                            backgroundColor: const Color.fromRGBO(246, 82, 171, 0.6),
                            child: Image.asset(
                              AssetUtilities.bankIcon,
                              height: 20.h,
                              width: 20.h,
                            ),
                          ),
                           SizedBox(
                            width: 4.w,
                          ),
                           Text(
                            "Bank Verification",
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            AssetUtilities.bankimage1,
                            height: 13.h,
                            width: 13.h,
                          ),
                          Image.asset(
                            AssetUtilities.upiImage,
                            height: 13.h,
                            width: 13.h,
                          ),
                          Image.asset(
                            AssetUtilities.pancardImage1,
                            height: 13.h,
                            width: 13.h,
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 2.h,
                      ),
                      Text("Account No",style: TextStyle(fontSize: 16.sp),),
                       SizedBox(
                        height: 1.h,
                      ),
                      customeTextFormField(accountnumberController, "Enter Account No"),
                       SizedBox(
                        height: 2.h,
                      ),
                       Text("IFSC Code",style: TextStyle(fontSize: 16.sp),),
                       SizedBox(
                        height: 1.h,
                      ),
                      customeTextFormField(ifscController, "Enter IFSC Code"),
                       SizedBox(
                        height: 2.h,
                      ),
                       Text("Retype Account Number",style: TextStyle(fontSize: 16.sp),),
                       SizedBox(
                        height: 1.h,
                      ),
                      customeTextFormField(retryAccountNumberController, "Retype Account No"),
                       SizedBox(
                        height: 2.h,
                      ),
                       Text("Bank Name",style: TextStyle(fontSize: 16.sp),),
                       SizedBox(
                        height: 1.h,
                      ),
                      customeTextFormField(retryAccountNumberController, "Bank Name"),
                       SizedBox(
                        height:2.h,
                      ),
                       Text("Branch Name",style: TextStyle(fontSize: 16.sp),),
                       SizedBox(
                        height: 1.h,
                      ),
                      customeTextFormField(retryAccountNumberController, "Branch Name"),
                      SizedBox(
                        height:2.h,
                      ),
                      Text("State",style: TextStyle(fontSize: 16.sp),),
                      SizedBox(
                        height: 1.h,
                      ),
                      customeTextFormField(retryAccountNumberController, "State"),
                      SizedBox(height:2.h,),
                       Align(alignment: Alignment.center,
                           child: ElevatedButton.icon(onPressed: (){},
                               icon: Icon(Icons.account_balance,
                                 size: 23.sp,color: Colors.black,),
                               label: Text("UPLOAD BANK PROOF",
                                 style: TextStyle(fontSize: 16.sp,color: Colors.black),),
                               style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.white),
                                   shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.sp),
                                       side: BorderSide(color: Colors.black,width: 4.sp)))))),
                      SizedBox(height:2.h,),
                       Text("IMPORTANT",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Color(0xFF7D7D7D)),),
                       SizedBox(height:0.5.h),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 1.w,top: 0.5.h),
                              child: CircleAvatar(
                                 radius: 7.sp, backgroundColor: Color(0xFF7D7D7D)),
                            ),
                             SizedBox(width: 2.w,),
                           Flexible(child: Text("Review your details before submitting your documents permanently.",style: TextStyle(fontSize: 15.sp,color: Color(0xFF7D7D7D)),)),
                         ],
                       ),
                      SizedBox(height:0.5.h),
                      Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 1.w,top: 0.5.h),
                              child: CircleAvatar(
                                 radius: 7.sp, backgroundColor: Color(0xFF7D7D7D)),
                            ),
                             SizedBox(width: 2.w,),
                           Flexible(child: Text("Password protected files wil be rejected.",style: TextStyle(fontSize: 15.sp,color: Color(0xFF7D7D7D)),)),
                         ],
                       ),
                       SizedBox(height: 4.h),
                      GestureDetector(
                        onTap: () {},
                        child: Align(
                          alignment: Alignment.center,
                          child: innerShadowButtonWidget(
                              "Submit for Verification",
                              context,
                              width: 85.w,
                              radius: 5.sp),
                        ),
                      ),
                       SizedBox(
                        height: 4.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customeTextFormField(
      TextEditingController controller, String hintText) {
    return SizedBox(
      height: 6.h,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: false,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(129, 116, 116, 1), fontSize: 16),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
