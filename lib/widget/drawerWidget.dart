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
      backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 54,
            ),
            Image.asset(
              AssetUtilities.person,
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "David Moreno",
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1), fontSize: 16),
            ),
            const SizedBox(
              height: 3,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const UpdateProfileScreen();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "View Profile",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: 12),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.airline_stops_sharp,
                        color: Colors.white,
                        size: 15,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
              child: Container(
                height: 62,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return AddCashScreen();
                        }));
                      },
                      child: Container(
                        height: 30,
                        width: 88,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        child: Row(
                          children: const [
                            Icon(Icons.wallet),
                            Text(
                              "Add Cash",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "₹500.00",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text(
                          "Total Balance",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 28,
              width: 115,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Container(
                height: 25,
                width: 112,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(54, 130, 54, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Container(
                    height: 20,
                    width: 108,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          AssetUtilities.pictureIcon,
                          height: 14,
                          width: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Withdraw Cash",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MoreScreen();
                          }));
                        } else if (index == 0) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MyAccountScreen();
                          }));
                        } else if (index == 1) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ReferScreen();
                          }));
                        } else if (index == 5) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const PromoteAppScreen();
                          }));
                        } else if (index == 4) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SupportScreen();
                          }));
                        } else if (index == 6) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const PrivacyPolicy();
                          }));
                        } else if (index == 2) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return OfferScreen();
                          }));
                        }
                      },
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            drawerList[index].icon,
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            drawerList[index].text,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                          const Spacer(),
                          index == 1
                              ? Container(
                                  height: 15,
                                  width: 51,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Text("Invite"),
                                  ),
                                )
                              : Container(),
                          const SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 22, top: 50),
              child: Container(
                height: 42,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      AssetUtilities.facebook1,
                      height: 33,
                      width: 33,
                    ),
                    Image.asset(
                      AssetUtilities.youtube,
                      height: 33,
                      width: 33,
                    ),
                    Image.asset(
                      AssetUtilities.instgram,
                      height: 33,
                      width: 33,
                    ),
                    Image.asset(
                      AssetUtilities.twitter,
                      height: 33,
                      width: 33,
                    ),
                    Image.asset(
                      AssetUtilities.telegram,
                      height: 33,
                      width: 33,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 24,
              width: 107,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(225, 225, 225, 1)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  AssetUtilities.logOut,
                  height: 20,
                  width: 17,
                ),
                const SizedBox(
                  width: 6,
                ),
                const Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
