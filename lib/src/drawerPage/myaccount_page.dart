import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/addCashScreen.dart';
import 'package:dream_11_app/src/drawerPage/transaction.dart';
import 'package:dream_11_app/src/user/verification_document/verificationDocument.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
    late double hsize = MediaQuery.of(context).size.height;
    late double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const AutoSizeText('My Account',style: TextStyle(fontFamily: "Imprima"),),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(NotificationSettingScreen());
              }, icon: const Icon(Icons.notification_add_sharp))
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: wsize*0.04,right:wsize*0.04,top: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AssetUtilities.bonus),
              SizedBox(height: hsize*0.015),
              Container(
                height: hsize*0.082,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AssetUtilities.bgImage))),
                child: Center(
                  child: Row(
                    children: [
                       SizedBox(
                        width: wsize*0.03,
                      ),
                      Container(
                        height: hsize*0.09,
                        width:wsize*0.09,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(156, 216, 92, 1),
                            border: Border.all(
                                color: const Color.fromRGBO(39, 44, 86, 1)),
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.wallet,
                          color: Color.fromRGBO(39, 44, 86, 1),
                        ),
                      ),
                       SizedBox(
                        width: wsize*0.02,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            AutoSizeText(minFontSize:9,
                              'Total Balance',
                              style: TextStyle(fontSize: 9,fontFamily: "Imprima"),
                            ),
                            AutoSizeText(
                              minFontSize:9,
                              '₹500,000.000',
                              style: TextStyle(fontSize: 9,fontFamily: "Imprima"),
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
                                borderRadius: BorderRadius.circular(15))),
                        child:  AutoSizeText(
                          minFontSize: 10,
                          'ADD CASH',
                          style: TextStyle(fontSize: 10,fontFamily: "Imprima"),
                        ),
                      ),
                       SizedBox(width: wsize*0.02,),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(VerificationDocumentScreen());
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Color.fromRGBO(39, 44, 86, 1),
                                ),
                                borderRadius: BorderRadius.circular(15))),
                        child: const AutoSizeText(
                          minFontSize: 10,
                          'Withdraw CASH',
                          style: TextStyle(fontSize: 10,fontFamily: "Imprima"),
                        ),
                      ),
                       SizedBox(
                        width: wsize*0.02,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: hsize*0.015),
              SizedBox(
                height:hsize*0.33,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal:wsize*0.04),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: hsize*0.01,),
                        const AutoSizeText(
                          minFontSize: 10,
                          'Deposit',
                          style: TextStyle(fontSize: 10,fontFamily: "Imprima"),
                        ),
                        const AutoSizeText(
                          minFontSize: 10,
                          '₹0',
                          style: TextStyle(fontSize: 10,fontFamily: "Imprima"),
                        ),
                         SizedBox(
                          height: hsize*0.008,
                        ),
                         Divider(
                          height: hsize*0.002,
                          color: Colors.black,
                        ),
                          SizedBox(
                            height: hsize*0.01,
                          ),
                        const AutoSizeText(
                          minFontSize: 10,
                          'Instant Cash',
                          style: TextStyle(fontSize: 10,fontFamily: "Imprima"),
                        ),
                        const AutoSizeText(
                          minFontSize: 10,
                          '₹0',
                          style: TextStyle(fontSize: 10,fontFamily: "Imprima"),
                        ),
                         SizedBox(
                            height: hsize*0.008,
                        ),
                         Divider(
                          height: hsize*0.002,
                          color: Colors.black,
                        ),
                         SizedBox(
                          height: hsize*0.01,
                        ),
                        const AutoSizeText(
                          minFontSize: 10,
                          'Winning',
                          style: TextStyle(fontSize: 10,fontFamily: "Imprima"),
                        ),
                        const AutoSizeText(
                          minFontSize: 10,
                          '₹0',
                          style: TextStyle(fontSize: 10,fontFamily: "Imprima"),
                        ),
                         SizedBox(
                          height: hsize*0.008,
                        ),
                         Divider(
                          height: hsize*0.002,
                          color: Colors.black,
                        ),
                         SizedBox(
                          height: hsize*0.008,
                        ),
                        const AutoSizeText(
                          minFontSize: 9,
                          'NO BONUS AMOUNT ONLY FOR WINNING AMOUNT WITHDRAW AND MINIMUM ACCOUNT BALANCE 300+ WINNING.',
                          style: TextStyle(fontFamily: "Imprima",
                              fontSize: 9,
                              color: Color.fromRGBO(255, 13, 13, 1)),
                        ),
                         SizedBox(
                          height: hsize*0.008,
                        ),
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(54, 130, 54, 1)),
                              onPressed: () {},
                              child: const AutoSizeText(
                                minFontSize: 8,
                                'VERIFY NOW',
                                style: TextStyle(fontSize: 8),
                              )),
                        ),
                         SizedBox(height: hsize*0.01),
                         Divider(
                          height: hsize*0.002,
                          color: Colors.black,
                        ),
                         SizedBox(height: hsize*0.01),
                        const AutoSizeText(
                          minFontSize: 10,
                          'Bonus',
                          style: TextStyle(fontSize: 10),
                        ),
                        const AutoSizeText(
                          minFontSize: 10,
                          '₹0',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               SizedBox(height: hsize*0.02),
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
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: wsize*0.04, top: hsize*0.013, bottom: hsize*0.013),
                                  child: AutoSizeText(
                                    minFontSize: 10,
                                    textList[index],
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                ),
                                const Spacer(),
                                 Icon(
                                  Icons.arrow_forward_ios,
                                  size:wsize*0.035,
                                ),
                                 SizedBox(
                                  width: wsize*0.02,
                                ),
                              ],
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
