import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HowToPlaySceeen extends StatefulWidget {
  HowToPlaySceeen({Key? key}) : super(key: key);

  @override
  State<HowToPlaySceeen> createState() => _HowToPlaySceeenState();
}

class _HowToPlaySceeenState extends State<HowToPlaySceeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text('How to Play',style: TextStyle(fontSize: 18.sp),),
      ),
    );
  }
}
