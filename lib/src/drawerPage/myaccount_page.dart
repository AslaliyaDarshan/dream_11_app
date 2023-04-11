import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/addCashScreen.dart';
import 'package:dream_11_app/src/drawerPage/transaction.dart';
import 'package:dream_11_app/src/user/verification_document/verificationDocument.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  List<String> textList = [
    'Update Bank Details',
    'My Recent Transaction',
    'My Recent Deposits',
    'My Recent Withdrawals',
    'Refar and earn'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text('My Account',style: TextStyle(fontFamily: "Imprima" ,fontSize: 18.sp),),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(NotificationSettingScreen());
              }, icon:  Icon(Icons.notification_add_sharp,size: 20.sp,))
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 3.w,right:3.w,top: 2.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AssetUtilities.bonus),
              SizedBox(height: 1.5.h),
              Container(
                height: 8.5.h,
                width: 100.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AssetUtilities.bgImage))),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Row(
                      children: [
                        Container(
                          height:4.5.h,
                          width:4.5.h,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(156, 216, 92, 1),
                              border: Border.all(
                                  color: const Color.fromRGBO(39, 44, 86, 1)),
                              shape: BoxShape.circle),
                          child:  Icon(
                            Icons.wallet,size: 20.sp,
                            color: Color.fromRGBO(39, 44, 86, 1),
                          ),
                        ),
                         SizedBox(
                          width: 3.w,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Text(
                                'Total Balance',
                                style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                              ),
                              Text(
                                '₹500,000.000',
                                style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(AddCashScreen());
                            //Navigator.push(context, MaterialPageRoute(builder: (context) {return AddCashScreen();}));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Color.fromRGBO(39, 44, 86, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(15.sp))),
                          child:  Text(
                            'ADD CASH',
                            style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                          ),
                        ),
                         SizedBox(width: 2.w,),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(VerificationDocumentScreen());
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Color.fromRGBO(39, 44, 86, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(15.sp))),
                          child:  Text(
                            'Withdraw CASH',
                            style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height:1.5.h),
              SizedBox(
                height:33.h,
                width: 100.w,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal:3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          'Deposit',
                          style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                        ),
                         Text(
                          '₹0',
                          style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                        ),
                         Divider(
                          height: 0.2.h,color:Colors.black,
                        ),
                        Text(
                          'Instant Cash',
                          style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                        ),
                         Text(
                          '₹0',
                          style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                        ),
                         Divider(
                          height: 0.2.h,
                          color: Colors.black,
                        ),

                         Text(
                          'Winning',
                          style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                        ),
                         Text(
                          '₹0',
                          style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                        ),
                         Divider(
                          height: 0.2.h,
                          color: Colors.black,
                        ),
                         Text(
                          'NO BONUS AMOUNT ONLY FOR WINNING AMOUNT WITHDRAW AND MINIMUM ACCOUNT BALANCE 300+ WINNING.',
                          style: TextStyle(fontFamily: "Imprima",
                              fontSize: 12.sp,
                              color: Color.fromRGBO(255, 13, 13, 1)),
                        ),
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(54, 130, 54, 1)),
                              onPressed: () {},
                              child: Text(
                                'VERIFY NOW',
                                style: TextStyle(fontSize: 13.sp),
                              )),
                        ),
                         Divider(
                          height: 0.2.h,
                          color: Colors.black,
                        ),
                         Text(
                          'Bonus',
                          style: TextStyle(fontSize: 13.sp),
                        ),
                         Text(
                          '₹0',
                          style: TextStyle(fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               SizedBox(height:2.h),
              ListView.builder(
                itemCount: textList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        child: GestureDetector(
                          onTap: () {
                            if (index == 1) {
                              Get.to(TransactionScreen());
                              //Navigator.push(context, MaterialPageRoute(builder: (context) {return const TransactionScreen();}));
                            }
                          },
                          child: Card(
                            elevation: 3,
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 3.w),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:3.w, bottom:1.h),
                                    child: Text(
                                      textList[index],
                                      style:  TextStyle(fontSize: 14.sp),
                                    ),
                                  ),
                                  const Spacer(),
                                   Icon(
                                    Icons.arrow_forward_ios,
                                    size:15.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                 }
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
