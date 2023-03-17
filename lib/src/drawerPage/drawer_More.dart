import 'package:dream_11_app/src/model/drawerModel.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<MoreWidgetModel> more = [
    MoreWidgetModel(icon: AssetUtilities.more1, text: "Fantasy Point System"),
    MoreWidgetModel(icon: AssetUtilities.more2, text: "Term & Condition"),
    MoreWidgetModel(icon: AssetUtilities.more3, text: "How to Play"),
    MoreWidgetModel(icon: AssetUtilities.more4, text: "Responsible Play"),
    MoreWidgetModel(icon: AssetUtilities.more5, text: "Lagality"),
    MoreWidgetModel(icon: AssetUtilities.more6, text: "Offers"),
    MoreWidgetModel(icon: AssetUtilities.more7, text: "About Us"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text(
          "More",
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.wallet)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add_sharp)),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: more.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, bottom: 10, right: 15),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 23,
                            backgroundColor:
                                const Color.fromRGBO(54, 130, 54, 1),
                            child: Center(
                              child: Image.asset(
                                more[index].icon,
                                height: 21,
                                width: 15,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Center(
                              child: Text(
                            more[index].text,
                            style: const TextStyle(fontSize: 18),
                          )),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 50),
          const Center(
              child: Text(
            "Version 2.0.1(15)",
            style: TextStyle(
                fontSize: 18, color: Color.fromRGBO(130, 130, 130, 1)),
          )),
        ],
      ),
    );
  }
}
