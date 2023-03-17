// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AadhaarVerificationScreen extends StatefulWidget {
  const AadhaarVerificationScreen({super.key});

  @override
  State<AadhaarVerificationScreen> createState() =>
      _AadhaarVerificationScreenState();
}

class _AadhaarVerificationScreenState extends State<AadhaarVerificationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController aadhaarController = TextEditingController();
  TextEditingController addressController = TextEditingController();

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
                          Image.asset(
                            AssetUtilities.aadharIcon,
                            height: 49,
                            width: 49,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Address Proof Verification",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Add your Address details",
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
                      const Text("Aadhaar Number"),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(aadhaarController, "Aadhaar Number"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Adress"),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(addressController, "Adress"),
                      const SizedBox(height: 36),
                      GestureDetector(
                        onTap: () {},
                        child: innerShadowButtonWidget(
                            "Submit for Verification",
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
