import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ReferScreen extends StatefulWidget {
  const ReferScreen({super.key});

  @override
  State<ReferScreen> createState() => _ReferScreenState();
}

class _ReferScreenState extends State<ReferScreen> {
  @override
  Widget build(BuildContext context) {
    late double hsize = MediaQuery.of(context).size.height;
    late double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const AutoSizeText(maxFontSize: 18,'My Referrals',style: TextStyle(fontFamily: "Imprima"),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: wsize*0.07),
        child: Column(
          children: [
            Image.asset(
              AssetUtilities.referImage,
            ),
            SizedBox(
              height: hsize*0.08,
              width: wsize*1,
              child: Card(
                color: const Color.fromRGBO(237, 237, 237, 1),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: wsize*0.04),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AutoSizeText(
                            maxFontSize: 16,
                            'Share invite code',
                            style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const AutoSizeText(
                                maxFontSize: 12,
                                'IDCAJBEBGH98 ',
                                style: TextStyle(fontSize: 12,fontFamily: "Imprima"),
                              ),
                              Image.asset(
                                AssetUtilities.copy,
                                height: hsize*0.02,
                                width: wsize*0.03,
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        AssetUtilities.whatsappicon,
                        height: hsize*0.036,
                        width:  hsize*0.036,
                      ),
                       SizedBox(
                        width: wsize*0.02,
                      ),
                      Image.asset(
                        AssetUtilities.moreicon,
                        height: hsize*0.036,
                        width: hsize*0.036,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: hsize*0.01,
            ),
            SizedBox(
              height: hsize*0.261,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: const Color.fromRGBO(237, 237, 237, 1),
                child: Padding(
                  padding:  EdgeInsets.only(top: hsize*0.015,right: wsize*0.04,left: wsize*0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const AutoSizeText(maxFontSize: 15,
                        'Earn upto ₹8000 for every referral',
                        style: TextStyle(
                          fontSize: 15,fontFamily: "Imprima"
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 4),
                        child: AutoSizeText(
                          minFontSize: 11,
                          '- Get ₹100 cash bonus after your friend verify their mobile number on CrickSwitch.',
                          style: TextStyle(fontSize: 11,fontFamily: "Imprima"),
                        ),
                      ),
                       SizedBox(
                        height: hsize*0.005,
                      ),
                      const AutoSizeText(
                        maxFontSize: 15,
                        'Kick off your friend’s CrickSwitch!',
                        style: TextStyle(
                            color: Color.fromRGBO(18, 117, 33, 1),
                            fontSize: 15,fontFamily: "Imprima"),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: hsize*0.13,
                            width: wsize*0.35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: hsize*0.025,
                                  width:  wsize*0.35,
                                  color: const Color.fromRGBO(217, 217, 217, 1),
                                  child: const Center(
                                      child: AutoSizeText(
                                        maxFontSize: 12,
                                    'Both of you get',
                                    style: TextStyle(fontSize: 12,fontFamily: "Imprima"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: wsize*0.02),
                                    height: hsize*0.085,
                                    width:  wsize*0.35,
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
                            height: hsize*0.13,
                            width: wsize*0.35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:hsize*0.025,
                                  width: wsize*0.35,
                                  color: const Color.fromRGBO(217, 217, 217, 1),
                                  child: const Center(
                                      child: AutoSizeText(
                                        maxFontSize: 12,
                                        'If your friend invite',
                                    style: TextStyle(fontSize: 12,fontFamily: "Imprima"),
                                  )),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: wsize*0.02),
                                    height: hsize*0.085,
                                    width:  wsize*0.35,
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
             SizedBox(height: hsize*0.01),
            Container(
              height: hsize*0.035,
              width: wsize*1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black, width: 0.5)),
              child: const Center(
                child: AutoSizeText(
                  maxFontSize: 12,
                  'You haven’t invited any friends yet',
                  style: TextStyle(fontSize: 12,fontFamily: "Imprima"),
                ),
              ),
            ),
             SizedBox(height: hsize*0.011),
            Container(
              height: hsize*0.035,
              width: wsize*1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black, width: 0.5)),
              child: const Center(
                child: AutoSizeText(maxFontSize: 12,
                  'INVITE PHONE CONTECTS',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(11, 132, 11, 1),fontFamily: "Imprima"),
                ),
              ),
            ),
             SizedBox(
              height: hsize*0.05,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                },
                child: Container(
                  height: hsize*0.03,
                  width: wsize*0.35,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(178, 233, 159, 1),
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "PER FRIEND",
                                style: TextStyle(
                                    fontSize: 15,fontFamily: "Imprima",
                                    color: Color.fromRGBO(0, 0, 0, 1)))
                          ],
                          text: "₹551",
                          style: TextStyle(fontFamily: "Imprima",
                              fontSize: 15,
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
        AutoSizeText(
          maxFontSize: 12,
          '₹',
          style: TextStyle(fontSize: 12,fontFamily: "Imprima"),
        ),
        AutoSizeText(
          txt,
          maxFontSize: 12,
          style: TextStyle(fontSize: 12,fontFamily: "Imprima"),
        ),
      ],
    );
  }
}
