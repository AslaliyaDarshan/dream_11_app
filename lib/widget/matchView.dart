import 'package:dream_11_app/src/user/homeScreen/joinContextScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MatchView extends StatefulWidget {
  bool? isSelected;
  StateSetter? setState;
  MatchView({super.key, this.isSelected = false, this.setState});

  @override
  State<MatchView> createState() => _MatchViewState();
}

class _MatchViewState extends State<MatchView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(JoinContextScreen());
        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const JoinContextScreen();}));
      },
      child: Container(
        height: 16.h,
        width: 100.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.sp),
            border: Border.all(
              color: const Color.fromRGBO(39, 44, 86, 1),
            ),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 1.6.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AssetUtilities.noty,
                    height: 2.h,
                    width: 2.h,
                  ),
                   Text(
                    'SA T20 League 2023',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (widget.isSelected == true) {
                        widget.isSelected = false;
                      } else if (widget.isSelected == false) {
                        widget.isSelected = true;
                      }
                      if (widget.setState != null) {
                        widget.setState!(() {});
                      }
                      setState(() {});
                    },
                    child: Image.asset(
                      widget.isSelected ?? false
                          ? AssetUtilities.selectedpin
                          : AssetUtilities.pin,
                      height: 2.h,
                      width: 2.h,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AssetUtilities.india,
                        height: 4.5.h,
                        width: 4.5.h,
                      ),
                       SizedBox(height: 0.5.h,),
                       Text(
                        'India',
                        style: TextStyle(fontSize: 13.sp),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  const Text(
                    'IND',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    '1d 21th left',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.red),
                  ),
                  const SizedBox(
                    width: 21,
                  ),
                  const Text(
                    'ENG',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        AssetUtilities.england,
                        height: 34,
                        width: 34,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'England',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 25,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(54, 130, 54, 1),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(14))),
              child: Row(children: [
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  'MEGA',
                  style: TextStyle(
                      color: Color.fromRGBO(44, 255, 90, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  ' t1.5 Crores',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 0, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                ),
                const Spacer(),
                Image.asset(
                  AssetUtilities.tshirt,
                  height: 14,
                  width: 17,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Lineups Out',
                  style: TextStyle(
                      color: Color.fromRGBO(44, 255, 90, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 10),
                ),
                const SizedBox(
                  width: 10,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
