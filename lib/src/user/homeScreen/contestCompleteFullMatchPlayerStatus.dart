import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/constant/Constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContestCompleteFullMatchPlayerStatus extends StatefulWidget {
  const ContestCompleteFullMatchPlayerStatus({Key? key}) : super(key: key);

  @override
  State<ContestCompleteFullMatchPlayerStatus> createState() =>
      _ContestCompleteFullMatchPlayerStatusState();
}

class _ContestCompleteFullMatchPlayerStatusState
    extends State<ContestCompleteFullMatchPlayerStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundGreenClr,
        title: text(
          "Points BreakUp",
          18.sp,
          backgroundWhiteClr,
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        decoration: BoxDecoration(
            color: backgroundWhiteClr,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(color: Colors.black54, blurRadius: 5, spreadRadius: 5)
            ]),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.asset(
                    AssetUtilities.contestCompleted,
                    fit: BoxFit.cover,
                    height: 19.h,
                    width: 100.w,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        AssetUtilities.viratkohli,
                        fit: BoxFit.cover,
                        height: 12.h,
                      ),
                    ),
                    width(5.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text("Kieron Pollard", 17.sp, backgroundWhiteClr),
                        height(1.h),
                        text("India - allRounder", 15.5.sp, backgroundWhiteClr),
                        height(0.6.h),
                        text("SELECTED BY", 15.5.sp, backgroundWhiteClr),
                        height(1.h),
                        text("78.02", 15.5.sp, backgroundWhiteClr),
                        height(1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            text("Not in your team ", 15.5.sp,
                                backgroundWhiteClr),
                            const Icon(
                              Icons.check_circle,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        height(1.h),
                      ],
                    ),
                    width(4.w),
                    Column(
                      children: [
                        text("CREDIT", 15.5.sp, backgroundWhiteClr),
                        height(1.h),
                        text("8.5", 15.5.sp, backgroundWhiteClr),
                        height(4.h),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Table(
              columnWidths: const {
                0: FlexColumnWidth(4),
                1: FlexColumnWidth(1.3),
                2: FlexColumnWidth(1.2),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.top,
              children: [
                TableRow(
                  decoration: const BoxDecoration(
                    color: Color(0xFFA9A9A9),
                  ),
                  children: [
                    Container(
                      height: 4.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 1.w),
                      child: text(
                        "Event",
                        16.5.sp,
                        const Color(0xFF646464),
                      ),
                    ),
                    Container(
                      height: 4.h,
                      alignment: Alignment.center,
                      child: text(
                        "Actual",
                        16.5.sp,
                        const Color(0xFF646464),
                      ),
                    ),
                    Container(
                      height: 4.h,
                      alignment: Alignment.center,
                      child: text(
                        "Points",
                        16.5.sp,
                        const Color(0xFF646464),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60.h,
              child: SingleChildScrollView(
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(4),
                    1: FlexColumnWidth(1.3),
                    2: FlexColumnWidth(1.2),
                  },
                  children: [
                    row("Announced/Sub", "Yes", "6"),
                    row("Runs", "67", "8"),
                    row("4's", "1", "0"),
                    row("6’s", "6", "0"),
                    row("S/R", "171.79", "0"),
                    row("30/50/100", "50+", "0"),
                    row("Duck", "1", "0"),
                    row("Wickets", "1", "0"),
                    row("E/R", "1", "0"),
                    row("Maiden", "1", "0"),
                    row("Run Out", "1", "0"),
                    row("RunOut Thrower", "1", "0"),
                    row("RunOut Catcher", "1", "0"),
                    row("Catch", "1", "8"),
                    row("Stumping", "1", "0"),
                    row("LBW/Bowled Bonus", "1", "0"),
                    row("Bonus Points", "No", "0"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
              child: Row(
                children: [
                  text(
                    "Total",
                    17.sp,
                    Colors.black,
                  ),
                  const Spacer(),
                  text(
                    "151",
                    17.sp,
                    Colors.black,
                  ),
                ],
              ),
            )
            /* Container(
              padding: EdgeInsets.only(left: 1.5.w, right: 6.w),
              height: 6.h,
              width: 100.w,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black54, width: 2),
                  bottom: BorderSide(color: Colors.black54, width: 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(
                    "LBW/Bowled Bonus",
                    17.sp,
                    const Color(0xFF646464),
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  text(
                    "178.61",
                    17.sp,
                    const Color(0xFF646464),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  text(
                    "6",
                    17.sp,
                    const Color(0xFF646464),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }

  row(String pStrTxt, String pStrTxt1, String pStrTxt2, {Border? border}) {
    return TableRow(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        border: Border(bottom: BorderSide(width: 1.5)),
      ),
      children: <Widget>[
        Container(
          height: 5.h,
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 1.w),
          child: text(
            pStrTxt,
            16.sp,
            Colors.black,
          ),
        ),
        Container(
          height: 5.h,
          alignment: Alignment.center,
          child: text(
            pStrTxt1,
            16.sp,
            Colors.black,
          ),
        ),
        Container(
          height: 5.h,
          alignment: Alignment.center,
          child: text(
            pStrTxt2,
            16.sp,
            Colors.black,
          ),
        ),
      ],
    );
  }
}
