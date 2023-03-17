// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class bankVerificationScreen extends StatefulWidget {
  const bankVerificationScreen({super.key});

  @override
  State<bankVerificationScreen> createState() => _bankVerificationScreenState();
}

class _bankVerificationScreenState extends State<bankVerificationScreen> {
  TextEditingController accountnumberController = TextEditingController();
  TextEditingController ifscController = TextEditingController();
  TextEditingController retryAccountNumberController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController branchNameController = TextEditingController();

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
                  AssetUtilities.bankImage,
                  height: 149,
                  width: 199,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(224, 224, 224, 1),
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
                                const Color.fromRGBO(246, 82, 171, 0.6),
                            child: Image.asset(
                              AssetUtilities.bankIcon,
                              height: 22,
                              width: 22,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Bank Verification",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            AssetUtilities.bankimage1,
                            height: 100,
                            width: 100,
                          ),
                          Image.asset(
                            AssetUtilities.upiImage,
                            height: 100,
                            width: 100,
                          ),
                          Image.asset(
                            AssetUtilities.pancardImage1,
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Text("Account No"),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(
                          accountnumberController, "Enter Account No"),
                      const SizedBox(
                        height: 22,
                      ),
                      const Text("IFSC Code"),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(ifscController, "Enter IFSC Code"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Retype Account Number"),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(
                          retryAccountNumberController, "Retype Account No"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Bank Name"),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(
                          retryAccountNumberController, "Bank Name"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Branch Name"),
                      const SizedBox(
                        height: 10,
                      ),
                      customeTextFormField(
                          retryAccountNumberController, "Branch Name"),
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
