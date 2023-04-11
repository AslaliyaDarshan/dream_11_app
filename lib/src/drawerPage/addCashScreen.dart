import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddCashScreen extends StatefulWidget {
  AddCashScreen({Key? key}) : super(key: key);

  @override
  State<AddCashScreen> createState() => _AddCashScreenState();
}

class _AddCashScreenState extends State<AddCashScreen> {
  TextEditingController txtamount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late double hsize = MediaQuery.of(context).size.height;
    late double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text('Add Cash',style: TextStyle(fontFamily: "Imprima",fontSize: 18.sp),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5.5.h,
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 2.w,
                  ),
                  Icon(
                    Icons.wallet,
                    color: Color.fromRGBO(0, 119, 47, 1),
                    size: 22.sp,
                  ),
                  SizedBox(
                    width: wsize*0.04,
                  ),
                  Text(
                    "Current Balance",
                    style: TextStyle(fontSize: 15.sp,fontFamily: "Imprima"),
                  ),
                  Spacer(),
                  Text('₹0',style: TextStyle(fontFamily: "Imprima",fontSize: 15.sp),),
                  SizedBox(width: 2.w,),
                ],
              ),
            ),
          ),
          SizedBox(
            height:2.h,
          ),
          SizedBox(
            height: 9.h,
            child: Card(
              child: Row(
                children: [
                   SizedBox(
                    width:2.w,
                  ),
                  Container(
                    height: 6.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(30, 188, 93, 1),
                        borderRadius: BorderRadius.circular(13.sp)),
                    child: Center(
                      child: Container(
                        height:5.5.h,
                        width: 39.w,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(238, 238, 238, 1),
                            borderRadius: BorderRadius.circular(11.sp)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Text(
                                'Amount to add',
                                style: TextStyle(
                                  color: Color.fromRGBO(54, 130, 54, 1),
                                  fontSize: 13.sp,fontFamily: "Imprima"
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 3.h,
                                    width: 20.w,
                                    child: Center(
                                      child: TextFormField(
                                        onTap: (){
                                          txtamount.text="200";
                                        },
                                        style: TextStyle(fontSize: 14.sp),
                                        controller: txtamount,
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(7),
                                        ],
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsetsDirectional.only(top: 0,start: 5),
                                          prefixText: "₹ ",
                                          filled: true,
                                          hintText: ' 200',
                                          hintStyle:  TextStyle(color: Color.fromRGBO(0, 0, 0, 0.6),fontSize: 14.sp),
                                          fillColor: const Color.fromRGBO(217, 217, 217, 1),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(2),
                                              borderSide: BorderSide.none),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(2),
                                              borderSide: BorderSide.none),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(2),
                                              borderSide: BorderSide.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                  //const Text('₹200',style: TextStyle(fontFamily: "Imprima"),),
                                  InkWell(
                                    onTap: (){
                                      txtamount.clear();
                                    },
                                    child: Image.asset(
                                      AssetUtilities.close,
                                      height: 3.h,
                                      width: 4.w,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 3.2.h,
                    width: 16.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child:  Center(child: Text('₹5000000',style: TextStyle(fontFamily: "Imprima",fontSize: 13.sp),)),
                  ),
                   SizedBox(
                    width:2.w,
                  ),
                  Container(
                    height:3.2.h,
                    width: 16.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child:  Center(child: Text('₹5000000',style: TextStyle(fontFamily: "Imprima",fontSize: 13.sp),)),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 9.h,
            child: Card(
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(54, 130, 54, 1)),
                  onPressed: () {

                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 35.w,
                    ),
                    child: Text('ADD ₹150',style: TextStyle(fontFamily: "Imprima",fontSize: 16.sp),),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
