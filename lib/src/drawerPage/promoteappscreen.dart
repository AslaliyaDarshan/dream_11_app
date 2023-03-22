import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
  var userGroup = [];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(226, 226, 226, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: Text(
          'Promote App',
          style: TextStyle(fontSize: 18.sp),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Enter your basic details',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Name",
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                customTextForm(nameController, 'Name'),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Team Name",
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                customTextForm(teamNameController, 'Team Name'),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                customTextForm(emailController, 'Email'),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Mobile",
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                customTextForm(mobileController, '+91 Mobile',
                    keyBoardType: TextInputType.phone),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "City",
                  style: TextStyle(fontSize: 15.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                customTextForm(
                  cityController,
                  'City',
                ),
                SizedBox(
                  height: 2.h,
                ),
                ...buildUserGroups(context),
                GestureDetector(
                  onTap: () {

                    setState(() {
                      index++;
                    });
                  },
                  child: DottedBorder(
                    dashPattern: const [5, 5],
                    radius: const Radius.circular(5),
                    child: Container(
                      height: 4.5.h,
                      width: 100.w,
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
                SizedBox(height: 3.h),
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
        contentPadding: EdgeInsets.only(left: 4.w, top: 1.5.h, bottom: 1.5.h),
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: textStyle ??
            TextStyle(
                color: Color.fromRGBO(
                  129,
                  116,
                  116,
                  1,
                ),
                fontSize: 16.sp),
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

  List buildUserGroups(BuildContext context) {
    for (var i = 0; i < index; i++) {
      userGroup.add(SizedBox(
        height: 37.h,
        width: 100.w,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(10.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Channel Details',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            userGroup.removeAt(index);
                            index--;
                          });
                        },
                        child: const Icon(Icons.close)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Select Channel Type',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                customTextForm(
                    selectChannelType1Controller, "Select Channel Type",
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.black),
                    prefixText: const Icon(Icons.arrow_drop_down)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Channel Name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                customTextForm(
                  selectChannelType2Controller,
                  "Channel Name",
                  textStyle: const TextStyle(fontSize: 14, color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Channel URL',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                customTextForm(
                  selectChannelType3Controller,
                  "Channel URL",
                  textStyle: const TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ));
    }

    return userGroup;
  }
}
