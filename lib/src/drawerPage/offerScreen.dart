
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatefulWidget {
  OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: Text('Offer',style: TextStyle(fontSize: 18.sp),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/offer1.png',
            height: 34.h,
            width: 95.w,
          ),
          Image.asset(
            'assets/images/offer3.png',
            height: 26.h,
            width: 95.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/offer4.png',
                height: 20.h,
                width: 45.w,
              ),
              Image.asset(
                'assets/images/offer4.png',
                height: 20.h,
                width: 45.w,
              ),
            ],
          )
        ],
      ),
    );
  }
}
