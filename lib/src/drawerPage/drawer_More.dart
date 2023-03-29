import 'package:dream_11_app/notification/notificationSetting.dart';
import 'package:dream_11_app/src/drawerPage/aboutUsScreen.dart';
import 'package:dream_11_app/src/drawerPage/fantasyPointSystem.dart';
import 'package:dream_11_app/src/drawerPage/howToPlayScreen.dart';
import 'package:dream_11_app/src/drawerPage/legalityScreen.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/drawerPage/offerScreen.dart';
import 'package:dream_11_app/src/drawerPage/responsiblePlayScreen.dart';
import 'package:dream_11_app/src/drawerPage/termandpermission.dart';
import 'package:dream_11_app/src/model/drawerModel.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/changePasswordScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<MoreWidgetModel> more = [
    MoreWidgetModel(icon: AssetUtilities.more1, text: "Fantasy Point System",),
    MoreWidgetModel(icon: AssetUtilities.more2, text: "Term & Condition",),
    MoreWidgetModel(icon: AssetUtilities.more3, text: "How to Play",),
    MoreWidgetModel(icon: AssetUtilities.more4, text: "Responsible Play",),
    MoreWidgetModel(icon: AssetUtilities.more5, text: "Lagality",),
    MoreWidgetModel(icon: AssetUtilities.more6, text: "Offers",),
    MoreWidgetModel(icon: AssetUtilities.more7, text: "About Us",),
    MoreWidgetModel(icon: AssetUtilities.more8, text: "Change Password",),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: more.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: 0.5.h),
                  child: GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Get.to(FantancyPointSystem());
                        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const MoreScreen();}));
                      } else if (index == 1) {
                        Get.to(TermAndConditionScreen());
                        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const MyAccountScreen();}));
                      } else if (index == 2) {
                        Get.to(HowToPlaySceeen());
                        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const ReferScreen();}));
                      } else if (index == 3) {
                        Get.to(ResposiblePlayScreen());
                        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const PromoteAppScreen();}));
                      } else if (index == 4) {
                        Get.to(LegalityScreen());
                        //Navigator.push(context, MaterialPageRoute(builder: (context) {return SupportScreen();}));
                      } else if (index == 5) {
                        Get.to(OfferScreen());
                        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const PrivacyPolicy();}));
                      }else if (index == 6) {
                        Get.to(AboutUsScreen());
                        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const PrivacyPolicy();}));
                      } else if (index == 7) {
                        Get.to(ChangePasswordScreen());
                        //Navigator.push(context, MaterialPageRoute(builder: (context) {return const PrivacyPolicy();}));
                      }
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.sp,
                          backgroundColor:
                              const Color.fromRGBO(54, 130, 54, 1),
                          child: Center(
                            child: Image.asset(
                              more[index].icon,
                              height: 3.h,
                              width: 3.h,
                            ),
                          ),
                        ),
                         SizedBox(
                          width: 4.w,
                        ),
                        Center(child: Text(
                          more[index].text,
                          style:  TextStyle(fontSize: 18.sp),
                         ),
                        ),
                        const Spacer(),
                         Icon(Icons.arrow_forward_ios,size: 20.sp,)
                      ],
                    ),
                  ),
                ),
                 Divider(
                  color: Colors.black,
                  thickness: 0.1.h,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
