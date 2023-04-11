// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';

class AadhaarVerificationScreen extends StatefulWidget {
  const AadhaarVerificationScreen({super.key});

  @override
  State<AadhaarVerificationScreen> createState() =>
      _AadhaarVerificationScreenState();
}

class _AadhaarVerificationScreenState extends State<AadhaarVerificationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController aadhaarController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 224, 196, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon:  Icon(Icons.arrow_back,size: 20.sp)),
              Center(
                child: Image.asset(
                  AssetUtilities.identy,
                  height: 22.h,
                  width: 22.h,
                ),
              ),
              Container(
                height: 68.5.h,
                width:200.w,
                decoration:  BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.sp))),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AssetUtilities.aadharIcon,
                            height:29.sp,
                          ),
                           SizedBox(
                            width: 4.w,
                          ),
                           Text(
                            "Address Proof Verification",
                            style: TextStyle(fontSize: 18.sp,fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 1.5.h,
                      ),
                       Text(
                        "Add your Address details",
                        style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
                      ),
                       SizedBox(
                        height: 1.h,
                      ),
                      DottedBorder(
                        dashPattern: const [5, 5],
                        radius:  Radius.circular(8.sp),
                        child: Container(
                          height: 9.5.h,
                          width: 100.w,
                          color: const Color.fromRGBO(217, 217, 217, 1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:  [
                              Icon(
                                Icons.image_outlined,
                                color: Color.fromRGBO(121, 121, 121, 1),
                                size: 25.sp,
                              ),
                              Text(
                                "Upload PAN Card image or PDf",
                                style: TextStyle(
                                    color: Color.fromRGBO(121, 121, 121, 1),
                                    fontSize: 17.sp,fontFamily: "Imprima"),
                              ),
                            ],
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 2.2.h,
                      ),
                      RichText(
                        text:  TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: "(Same as on PAN Card)",
                                  style: TextStyle(
                                      fontSize: 16.sp,fontFamily: "Imprima",
                                      color: Color.fromRGBO(128, 128, 128, 1)))
                            ],
                            text: "Name",
                            style:
                                TextStyle(fontSize: 16.sp, color: Colors.black,fontFamily: "Imprima",)),
                      ),
                       SizedBox(
                        height: 1.h,
                      ),
                      customeTextFormField(nameController, "Name"),
                       SizedBox(
                        height: 2.2.h,
                      ),
                       Text("Aadhaar Number",style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),),
                       SizedBox(
                        height: 1.h,
                      ),
                      customeTextFormField(aadhaarController, "Aadhaar Number"),
                       SizedBox(
                        height: 2.2.h,
                      ),
                       Text("Adress",style: TextStyle(fontSize: 16.sp,fontFamily: "Imprima"),),
                       SizedBox(
                        height: 1.h,
                      ),
                      customeTextFormField(addressController, "Adress"),
                       SizedBox(height: 4.h),
                      GestureDetector(
                        onTap: () {},
                        child: Align(
                          alignment: Alignment.center,
                          child: innerShadowButtonWidget(
                              "Submit for Verification",
                              context,
                              width: 85.w,
                              radius: 0.sp),
                        ),
                      ),
                       SizedBox(
                        height: 4.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customeTextFormField(TextEditingController controller, String hintText) {
    return SizedBox(
      height: 6.h,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: false,
          hintText: hintText,
          hintStyle:  TextStyle(
              color: Color.fromRGBO(129, 116, 116, 1), fontSize: 16.sp,fontFamily: "Imprima"),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.sp)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8.sp)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8.sp)),
        ),
      ),
    );
  }
}
