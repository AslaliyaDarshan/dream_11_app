import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EarnCrickCoinScreen extends StatefulWidget {
  const EarnCrickCoinScreen({super.key});

  @override
  State<EarnCrickCoinScreen> createState() => _EarnCrickCoinScreenState();
}

class _EarnCrickCoinScreenState extends State<EarnCrickCoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30.h,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromRGBO(179, 232, 179, 1),
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'How to earn Crick Coins',
                    style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Imprima"),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AssetUtilities.coin1,
                        height: 5.h,
                        width: 5.h,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      arrow(),
                      arrow(),
                      arrow(),
                      arrow(),
                      arrow(),
                      Image.asset(
                        AssetUtilities.coin,
                        height: 6.h,
                        width: 6.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Join any contest to unlock CrickCoins',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        fontFamily: "Imprima"),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'are based on your  ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Imprima")),
                            TextSpan(
                                text: 'latest Level ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Imprima")),
                            TextSpan(
                                text:
                                    'and pervious action you have performed. ',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Imprima")),
                          ],
                          text: 'Your first CrickCoins ',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Imprima")),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Text.rich(
                TextSpan(
                  text: 'Earn ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      fontFamily: "Imprima"),
                  children: [
                    TextSpan(
                      text: 'CrickCoins ',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          fontFamily: "Imprima"),
                    ),
                    TextSpan(
                      text: 'when you perform 2 types of action: ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          fontFamily: "Imprima"),
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 3.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(178, 232, 178, 1),
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Center(
                child: Text(
                  '24×7',
                  style: TextStyle(
                      color: Color.fromRGBO(54, 130, 54, 1),
                      fontSize: 15.sp,
                      fontFamily: "Imprima"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              height: 17.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color: Colors.black, width: 3.sp)),
              child: Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ACTION',
                        style: TextStyle(
                            color: Color.fromRGBO(115, 113, 113, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                            fontFamily: "Imprima"),
                      ),
                      Text(
                        'DREAMCONS',
                        style: TextStyle(
                            color: Color.fromRGBO(115, 113, 113, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                            fontFamily: "Imprima"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Paid Contests Joined',
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontFamily: "Imprima"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Earn 1',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontFamily: "Imprima"),
                              ),
                              Image.asset(
                                AssetUtilities.coin,
                                height: 2.h,
                                width: 2.h,
                              ),
                              Text(
                                'For every ₹10 ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontFamily: "Imprima"),
                              ),
                            ],
                          ),
                          Text(
                            'you’ve paid ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Free Contests Joined',
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontFamily: "Imprima"),
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontFamily: "Imprima"),
                              ),
                              Image.asset(
                                AssetUtilities.coin,
                                height: 2.h,
                                width: 2.h,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Earn up to 3',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontFamily: "Imprima"),
                              ),
                              Image.asset(
                                AssetUtilities.coin,
                                height: 2.h,
                                width: 2.h,
                              ),
                              Text(
                                'per match',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontFamily: "Imprima"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 3.h,
              width: 30.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp),
                  color: const Color.fromRGBO(179, 179, 179, 1)),
              child: Center(
                child: Text(
                  'ONE-TIME',
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontFamily: "Imprima"),
                ),
              ),
            ),
            Container(
              width: 100.w,
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(width: 3.sp, color: Colors.black)),
              child: Column(
                children: [
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ACTION',
                          style: TextStyle(
                              color: Color.fromRGBO(115, 113, 113, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              fontFamily: "Imprima"),
                        ),
                        Text(
                          'DREAMCONS',
                          style: TextStyle(
                              color: Color.fromRGBO(115, 113, 113, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              fontFamily: "Imprima"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.7.h,
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Row(
                      children: [
                        Text(
                          'Email Verification',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.sp,
                              fontFamily: "Imprima"),
                        ),
                        const Spacer(),
                        Text(
                          '2',
                          style: TextStyle(
                              color: Color.fromRGBO(115, 113, 113, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              fontFamily: "Imprima"),
                        ),
                        Image.asset(
                          AssetUtilities.coin,
                          height: 3.h,
                          width: 3.h,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.7.h,
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Row(
                      children: [
                        Text(
                          'Phonebook Sync',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.sp,
                              fontFamily: "Imprima"),
                        ),
                        const Spacer(),
                        Text(
                          '5',
                          style: TextStyle(
                              color: Color.fromRGBO(115, 113, 113, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              fontFamily: "Imprima"),
                        ),
                        Image.asset(
                          AssetUtilities.coin,
                          height: 3.h,
                          width: 3.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.7.h,
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Row(
                      children: [
                        Text(
                          'Profile Picture Changed (First Time)',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.sp,
                              fontFamily: "Imprima"),
                        ),
                        const Spacer(),
                        Text(
                          '7',
                          style: TextStyle(
                              color: Color.fromRGBO(115, 113, 113, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp),
                        ),
                        Image.asset(
                          AssetUtilities.coin,
                          height: 3.h,
                          width: 3.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.7.sp,
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Row(
                      children: [
                        Text(
                          'Team Name Changed',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.sp,
                              fontFamily: "Imprima"),
                        ),
                        const Spacer(),
                        Text(
                          '10',
                          style: TextStyle(
                              color: Color.fromRGBO(115, 113, 113, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              fontFamily: "Imprima"),
                        ),
                        Image.asset(
                          AssetUtilities.coin,
                          height: 25,
                          width: 23,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.7.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget arrow() {
    return Image.asset(
      AssetUtilities.arrow,
      height: 3.h,
      width: 2.h,
    );
  }
}
