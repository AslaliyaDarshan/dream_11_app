import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContestCompleteScoreCard extends StatefulWidget {
  const ContestCompleteScoreCard({Key? key}) : super(key: key);

  @override
  State<ContestCompleteScoreCard> createState() =>
      _ContestCompleteScoreCardState();
}

class _ContestCompleteScoreCardState extends State<ContestCompleteScoreCard> {
  @override
  Widget build(BuildContext context) {
    return text("ScoreCard", 20.sp, backgroundGreenClr);
  }
}
