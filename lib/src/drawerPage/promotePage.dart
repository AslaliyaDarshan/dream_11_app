import 'package:dream_11_app/src/drawerPage/promoteappscreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PromoteAppScreen extends StatefulWidget {
  const PromoteAppScreen({super.key});

  @override
  State<PromoteAppScreen> createState() => _PromoteAppScreenState();
}

class _PromoteAppScreenState extends State<PromoteAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text('Promote App',style: TextStyle(fontSize:17.sp),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AssetUtilities.reffer,
                height: 40.h,
                width: 85.w,
              ),
            ),
             Center(
              child: Text(
                'Do you Want to collaborate with us?',
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
             SizedBox(
              height: 3.h,
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(
                    text: 'Are you a ',
                    style: TextStyle(fontSize: 17.sp, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'youtube ',
                          style: TextStyle(color: Colors.red, fontSize: 17.sp)),
                      TextSpan(
                          text: 'or having a ',
                          style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                      TextSpan(
                          text: 'Telegram ',
                          style: TextStyle(
                              color: Color.fromRGBO(55, 113, 200, 1),
                              fontSize: 17.sp)),
                      TextSpan(
                          text: 'channel or ',
                          style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                      TextSpan(
                          text: 'or having a ',
                          style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                      TextSpan(
                          text: 'instagram ',
                          style: TextStyle(
                              color: Color.fromRGBO(216, 22, 161, 1),
                              fontSize: 17.sp)),
                      TextSpan(
                          text: 'a want to promoter?',
                          style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                    ]),
              ),
            ),
             SizedBox(
              height: 2.5.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.w),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PromoteAppForm();
                  }));
                },
                child: Container(
                  width: 100.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(27, 104, 0, 1), width: 6.sp),
                      color: const Color.fromRGBO(54, 130, 54, 1),
                      borderRadius: BorderRadius.circular(13.sp)),
                  child:  Center(
                    child: Text(
                      'Connect Now',
                      style: TextStyle(fontSize: 18.sp, color: Colors.white),
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
}
