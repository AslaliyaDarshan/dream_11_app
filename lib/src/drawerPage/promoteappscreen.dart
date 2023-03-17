import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class PromoteAppForm extends StatefulWidget {
  const PromoteAppForm({super.key});

  @override
  State<PromoteAppForm> createState() => _PromoteAppFormState();
}

class _PromoteAppFormState extends State<PromoteAppForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController teamNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController selectChannelType1Controller = TextEditingController();
  TextEditingController selectChannelType2Controller = TextEditingController();
  TextEditingController selectChannelType3Controller = TextEditingController();
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(226, 226, 226, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Promote App'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  'Enter your basic details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Name",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 12,
                ),
                customTextForm(nameController, 'Name'),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  "Team Name",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 12,
                ),
                customTextForm(teamNameController, 'Team Name'),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  "Email",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 12,
                ),
                customTextForm(emailController, 'Email'),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  "Mobile",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 12,
                ),
                customTextForm(mobileController, '+91 Mobile',
                    keyBoardType: TextInputType.phone),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  "City",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 12,
                ),
                customTextForm(
                  cityController,
                  'City',
                ),
                const SizedBox(
                  height: 14,
                ),
                isPressed
                    ? SizedBox(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Channel Details',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                        onTap: () {
                                          isPressed = false;
                                          setState(() {});
                                        },
                                        child: const Icon(Icons.close)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Select Channel Type',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                customTextForm(selectChannelType1Controller,
                                    "Select Channel Type",
                                    textStyle: const TextStyle(
                                        fontSize: 14, color: Colors.black),
                                    prefixText:
                                        const Icon(Icons.arrow_drop_down)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Select Channel Type',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                customTextForm(
                                  selectChannelType2Controller,
                                  "Select Channel Type",
                                  textStyle: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Select Channel Type',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                customTextForm(
                                  selectChannelType3Controller,
                                  "Select Channel Type",
                                  textStyle: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          isPressed = true;
                          setState(() {});
                        },
                        child: DottedBorder(
                          dashPattern: const [5, 5],
                          radius: const Radius.circular(5),
                          child: Container(
                            height: 39,
                            width: MediaQuery.of(context).size.width,
                            color: const Color.fromRGBO(217, 217, 217, 1),
                            child: const Center(
                              child: Text(
                                "+ Add Channel Details",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                const SizedBox(height: 17),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(54, 130, 54, 1)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 2.9,
                          right: MediaQuery.of(context).size.width / 2.9),
                      child: const Text("Save"),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextForm(TextEditingController controller, String hintText,
      {TextInputType? keyBoardType, Widget? prefixText, TextStyle? textStyle}) {
    return TextFormField(
      controller: controller,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        suffix: Padding(
            padding: const EdgeInsets.only(right: 0.0), child: prefixText),
        filled: true,
        contentPadding: const EdgeInsets.only(left: 18, top: 9, bottom: 8),
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: textStyle ??
            const TextStyle(
                color: Color.fromRGBO(
                  129,
                  116,
                  116,
                  1,
                ),
                fontSize: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
