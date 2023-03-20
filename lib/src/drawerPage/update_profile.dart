import 'package:dream_11_app/widget/drawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController teamNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController changePasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    late double hsize = MediaQuery.of(context).size.height;
    late double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(226, 226, 226, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title: const Text('Update Profile'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: wsize*0.05),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 SizedBox(
                  height: hsize*0.03,
                ),
                const AutoSizeText(
                  "Name",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: hsize*0.015,
                ),
                customTextForm(nameController, 'Name'),
                 SizedBox(
                  height: hsize*0.03,
                ),
                const AutoSizeText(
                  "Team Name",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: hsize*0.015,
                ),
                customTextForm(teamNameController, 'Team Name'),
                 SizedBox(
                     height: hsize*0.03
                 ),
                const AutoSizeText(
                  "Email",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: hsize*0.015,
                ),
                customTextForm(emailController, 'Email'),
                 SizedBox(
                     height: hsize*0.03,
                ),
                const AutoSizeText(
                  "Mobile",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: hsize*0.015,
                ),
                customTextForm(mobileController, 'Mobile',
                    keyBoardType: TextInputType.phone),
                 SizedBox(
                    height: hsize*0.03
                ),
                const AutoSizeText(
                  "Change Password",
                  style: TextStyle(fontSize: 15),
                ),
                 SizedBox(
                  height: hsize*0.015,
                ),
                customTextForm(changePasswordController, '***********', prefixText: 'Change Password'),
                 SizedBox(
                    height: hsize*0.03,
                ),
                 SizedBox(
                  height: hsize*0.03,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: () {
                        //Get.to(DrawerWidger());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(54, 130, 54, 1)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: wsize*0.35),
                        child: const Text("Save"),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextForm(TextEditingController controller, String hintText,
      {TextInputType? keyBoardType, String? prefixText}) {
    return TextFormField(
      controller: controller,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        suffix: Padding(
          padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*0.02),
          child: AutoSizeText(
            prefixText ?? '',
            style: const TextStyle(
                color: Color.fromRGBO(
                  157,
                  142,
                  142,
                  1,
                ),
                fontSize: 15),
          ),
        ),
        filled: true,
        contentPadding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03),
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(
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
