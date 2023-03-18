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
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
    late double hsize = MediaQuery.of(context).size.height;
    late double wsize = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
      child: SafeArea(
        child: Column(
          children: [
             SizedBox(
              height: hsize*0.05,
            ),
            Image.asset(
              AssetUtilities.person,
              height: hsize*0.1,
              width: hsize*0.1,
            ),
             SizedBox(
              height: hsize*0.015,
            ),
            const AutoSizeText(
              "David Moreno",
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1), fontSize: 16),
            ),
             SizedBox(
              height: hsize*0.0035,
            ),
            InkWell(
              onTap: () {
                Get.to(UpdateProfileScreen());
                //Navigator.push(context, MaterialPageRoute(builder: (context) {return const UpdateProfileScreen();}));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AutoSizeText(
                    "View Profile",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: 12),
                  ),
                   Icon(
                    Icons.airline_stops_sharp,
                    color: Colors.white,
                    size: wsize*0.04,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
              child: Container(
                height: hsize*0.07,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: wsize*0.03),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(AddCashScreen());
                          //Navigator.push(context, MaterialPageRoute(builder: (context) {return AddCashScreen();}));
                        },
                        child: Container(
                          height: hsize*0.04,
                          width: wsize*0.26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(Icons.wallet),
                              AutoSizeText("Add Cash", style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: wsize*0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                      AutoSizeText(
                        "₹500.00",
                        style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                      AutoSizeText(
                        maxLines: 1,
                        "Total Balance",
                        minFontSize: 12,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(height:hsize*0.016),
            Container(
              height: hsize*0.034,
              width: wsize*0.33,
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.white),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                  child: Center(
                    child: Container(
                      height: hsize*0.025,
                      width: wsize*0.31,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.white),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Image.asset(
                            AssetUtilities.pictureIcon,
                            height: 14,
                            width: 16,
                          ),

                          const AutoSizeText(
                            "Withdraw Cash",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              height: 12,
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
                        }
                      },
                      child: Row(
                        children: [
                           SizedBox(
                            width: wsize*0.06,
                          ),
                          Image.asset(
                            drawerList[index].icon,
                            height: hsize*0.029,
                            width: hsize*0.029,
                          ),
                           SizedBox(
                            width: wsize*0.08,
                          ),
                          AutoSizeText(
                            drawerList[index].text,
                            style: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          const Spacer(),
                          index == 1
                              ? Container(
                                  height: hsize*0.022,
                                  width: wsize*0.15,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Text("Invite"),
                                  ),
                                )
                              : Container(),
                           SizedBox(
                            width: wsize*0.035,
                          ),
                        ],
                      ),
                    ),
                     SizedBox(
                      height: hsize*0.025,
                    )
                  ],
                );
              },
            ),
            Padding(
              padding:  EdgeInsets.only(top: hsize*0.01,bottom: hsize*0.025),
              child: Container(
                height: hsize*0.05,
                width: MediaQuery.of(context).size.width*0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
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
              height: hsize*0.033,
              width: wsize*0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(225, 225, 225, 1)),
              child:
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                Image.asset(
                  AssetUtilities.logOut,
                  height: hsize*0.025,
                  width: hsize*0.025,
                ),
                AutoSizeText(
                  "Logout",
                  style: TextStyle(color: Colors.red),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
  Widget Sos(String image1){
    return  Image.asset(
      image1,
      height: MediaQuery.of(context).size.height*0.04,
      width: MediaQuery.of(context).size.height*0.04,
    );
  }
}
