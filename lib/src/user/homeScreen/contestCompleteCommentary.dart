import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContestCompleteCommentary extends StatefulWidget {
  const ContestCompleteCommentary({Key? key}) : super(key: key);

  @override
  State<ContestCompleteCommentary> createState() =>
      _ContestCompleteCommentaryState();
}

class _ContestCompleteCommentaryState extends State<ContestCompleteCommentary> {
  @override
  Widget build(BuildContext context) {
    return text("Commentary", 20.sp, backgroundGreenClr);
  }
}
