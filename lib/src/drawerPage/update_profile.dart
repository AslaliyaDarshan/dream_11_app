import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


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
    return Scaffold(
      backgroundColor: const Color.fromRGBO(226, 226, 226, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(54, 130, 54, 1),
        title:  Text('Update Profile',style: TextStyle(fontSize: 18.sp),),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 4.w),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 3.h,
                ),
                 Text(
                  "Name",
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                customTextForm(nameController, 'Name'),
                 SizedBox(
                  height: 3.h,
                ),
                 Text(
                  "Team Name",
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                customTextForm(teamNameController, 'Team Name'),
                 SizedBox(
                     height: 3.h
                 ),
                 Text(
                  "Email",
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                customTextForm(emailController, 'Email'),
                 SizedBox(
                     height: 3.h,
                ),
                 Text(
                  "Mobile",
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                customTextForm(mobileController, 'Mobile',
                    keyBoardType: TextInputType.phone),
                 SizedBox(
                    height: 3.h
                ),
                 Text(
                  "Change Password",
                  style: TextStyle(fontSize: 16.sp),
                ),
                 SizedBox(
                  height: 1.5.h,
                ),
                customTextForm(changePasswordController,'***********', prefixText: 'Change Password'),
                 SizedBox(
                    height: 7.h,
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
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child:  Text("Save",style: TextStyle(fontSize: 16.sp),),
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
          child: Text(
            prefixText ?? '',
            style:  TextStyle(
                color: Color.fromRGBO(
                  157,
                  142,
                  142,
                  1,
                ),
                fontSize: 16.sp),
          ),
        ),
        filled: true,
        contentPadding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.03),
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle:  TextStyle(
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
}
