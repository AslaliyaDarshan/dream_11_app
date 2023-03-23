import 'package:dream_11_app/src/drawerPage/addCashScreen.dart';
import 'package:dream_11_app/src/drawerPage/drawer_More.dart';
import 'package:dream_11_app/src/drawerPage/myaccount_page.dart';
import 'package:dream_11_app/src/drawerPage/offerScreen.dart';
import 'package:dream_11_app/src/drawerPage/privacyScreen.dart';
import 'package:dream_11_app/src/drawerPage/promotePage.dart';
import 'package:dream_11_app/src/drawerPage/referPage.dart';
import 'package:dream_11_app/src/drawerPage/supportScreen.dart';
import 'package:dream_11_app/src/drawerPage/update_profile.dart';
import 'package:dream_11_app/src/model/drawerModel.dart';
import 'package:dream_11_app/src/user/verification_document/verificationDocument.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class DrawerWidger extends StatefulWidget {
  const DrawerWidger({super.key});

  @override
  State<DrawerWidger> createState() => _DrawerWidgerState();
}

class _DrawerWidgerState extends State<DrawerWidger> {
  List<DrawerModel> drawerList = [
    DrawerModel(icon: AssetUtilities.drawer1, text: "My Account"),
    DrawerModel(icon: AssetUtilities.drawer2, text: "Refer & Earn"),
    DrawerModel(icon: AssetUtilities.drawer3, text: "Winners"),
    DrawerModel(icon: AssetUtilities.drawer4, text: "Verify Account"),
    DrawerModel(icon: AssetUtilities.drawer5, text: "Support"),
    DrawerModel(icon: AssetUtilities.drawer6, text: "Promote Our App"),
    DrawerModel(icon: AssetUtilities.drawer7, text: "Privacy Policy"),
    DrawerModel(icon: AssetUtilities.drawer8, text: "More"),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 85.w,
      backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
      child: SafeArea(
        child: Column(
          children: [
             SizedBox(
              height: 6.h,
            ),
            Image.asset(
              AssetUtilities.person,
              height: 10.h,
              width: 10.h,
            ),
             SizedBox(
              height:1.h,
            ),
            Text(
              "David Moreno",
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1), fontSize: 16.sp),
            ),
             SizedBox(
              height:0.6.h,
            ),
            InkWell(
              onTap: () {
                Get.to(UpdateProfileScreen());
                //Navigator.push(context, MaterialPageRoute(builder: (context) {return const UpdateProfileScreen();}));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    "View Profile",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: 14.sp,fontFamily: "Imprima"),
                  ),
                   Icon(
                    Icons.airline_stops_sharp,
                    color: Colors.white,
                    size: 13.sp,
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
              child: Container(
                height: 7.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.sp)),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 3.w),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(AddCashScreen());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return AddCashScreen();}));
                        },
                        child: Container(
                          height: 4.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:  [
                              Icon(Icons.wallet,size: 19.sp),
                              Text("Add Cash", style: TextStyle(fontSize: 14.sp,fontFamily: "Imprima"),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 3.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                      Text(
                        "₹500.00",
                        style: TextStyle(fontSize: 18.sp, color: Colors.black,fontWeight: FontWeight.bold,fontFamily: "Imprima"),
                      ),
                     Text(
                        "Total Balance",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500,fontFamily: "Imprima"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(height:1.5.h),
            InkWell(
              onTap: (){
                 Get.to(VerificationDocumentScreen());
              },
              child: Container(
                height: 4.h,
                width: 33.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 5.sp,color: Colors.white),
                  borderRadius: BorderRadius.circular(15.sp),
                ),
                child: Center(
                    child: Center(
                      child: Container(
                        height: 3.h,
                        width: 31.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13.sp),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              AssetUtilities.pictureIcon,
                              height: 2.5.h,
                              width: 2.5.h,
                            ),
                             Text(
                              "Withdraw Cash",
                              style: TextStyle(fontSize: 13.sp,fontFamily: "Imprima"),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
             SizedBox(
              height: 2.h,
            ),
            ListView.builder(
              itemCount: drawerList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (index == 7) {
                          Get.to(MoreScreen());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return const MoreScreen();}));
                        } else if (index == 0) {
                          Get.to(MyAccountScreen());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return const MyAccountScreen();}));
                        } else if (index == 1) {
                          Get.to(ReferScreen());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return const ReferScreen();}));
                        } else if (index == 5) {
                          Get.to(PromoteAppScreen());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return const PromoteAppScreen();}));
                        } else if (index == 4) {
                          Get.to(SupportScreen());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return SupportScreen();}));
                        } else if (index == 6) {
                          Get.to(PrivacyPolicy());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return const PrivacyPolicy();}));
                        } else if (index == 2) {
                          Get.to(OfferScreen());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return OfferScreen();}));
                        } else if(index==3){
                          Get.to(VerificationDocumentScreen());
                        }
                      },
                      child: Row(
                        children: [
                           SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(
                            drawerList[index].icon,
                            height: 3.h,
                            width: 3.h,
                          ),
                           SizedBox(
                            width: 8.w
                          ),
                         Text(
                            drawerList[index].text,
                            style:  TextStyle(color: Colors.white, fontSize: 18.sp,fontFamily: "Imprima"),
                          ),
                          const Spacer(),
                          index == 1
                              ? Container(
                                  height: 2.5.h,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.sp),
                                  ),
                                  child:  Center(
                                    child: Text("Invite",style: TextStyle(fontFamily: "Imprima",fontSize: 14.sp),),
                                  ),
                                )
                              : Container(),
                           SizedBox(
                            width: 3.w,
                          ),
                        ],
                      ),
                    ),
                     SizedBox(
                      height: 2.5.h,
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding:  EdgeInsets.only(bottom:3.h ),
              child: Container(
                height: 4.7.h,
                width: MediaQuery.of(context).size.width*0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Sos(AssetUtilities.facebook1),
                    Sos(AssetUtilities.youtube),
                    Sos(AssetUtilities.instgram),
                    Sos(AssetUtilities.twitter),
                    Sos(AssetUtilities.telegram),
                  ],
                ),
              ),
            ),
            Container(
              height: 3.5.h,
              width: 30.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: const Color.fromRGBO(225, 225, 225, 1)),
              child:
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                Image.asset(
                  AssetUtilities.logOut,
                  height: 2.5.h,
                  width: 2.5.h,
                ),
                Text(
                  "Logout",
                  style: TextStyle(color: Colors.red,fontFamily: "Imprima",fontSize: 16.sp),
                ),
              ],),
            ),
          ],
        ),
      ),
    );
  }
  Widget Sos(String image1){
    return  Image.asset(
      image1,
      height: 3.7.h,
      width: 3.7.h,
    );
  }
}
