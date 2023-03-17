// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class PasswordVerificationScreen extends StatefulWidget {
  const PasswordVerificationScreen({super.key});

  @override
  State<PasswordVerificationScreen> createState() =>
      _PasswordVerificationScreenState();
}

class _PasswordVerificationScreenState
    extends State<PasswordVerificationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController panController = TextEditingController();
  TextEditingController confirmPanControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 224, 196, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              Center(
                child: Image.asset(
                  AssetUtilities.identy,
                  height: 220,
                  width: 220,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0, right: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                const Color.fromRGBO(156, 216, 92, 1),
                            child: Center(
                              child: Image.asset(
                                AssetUtilities.pancardIcon,
                                height: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Pan card verification",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Add your Card details",
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DottedBorder(
                        dashPattern: const [5, 5],
                        radius: const Radius.circular(5),
                        child: Container(
                          height: 73,
                          width: MediaQuery.of(context).size.width,
                          color: const Color.fromRGBO(217, 217, 217, 1),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.image_outlined,
                                color: Color.fromRGBO(121, 121, 121, 1),
                                size: 35,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Upload PAN Card image or PDf",
                                style: TextStyle(
                                    color: Color.fromRGBO(121, 121, 121, 1),
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      RichText(
                        text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: "(Same as on PAN Card)",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(128, 128, 128, 1)))
                            ],
                            text: "Name",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(nameController, "Name"),
                      const SizedBox(
                        height: 22,
                      ),
                      const Text("Pan Number"),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(panController, "Name"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Confirm PAN Number"),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(
                          confirmPanControler, "Confirm PAN Number"),
                      const SizedBox(height: 36),
                      GestureDetector(
                        onTap: () {},
                        child: innerShadowButtonWidget(
                            "Sunmit for Verification",
                            context,
                            width: MediaQuery.of(context).size.width,
                            radius: 5),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customeTextFormField(
      TextEditingController controller, String hintText) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: false,
        hintText: hintText,
        hintStyle: const TextStyle(
            color: Color.fromRGBO(129, 116, 116, 1), fontSize: 16),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
