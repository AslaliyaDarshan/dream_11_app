import 'package:flutter/material.dart';

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
        title: const Text('Update Profile'),
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
                customTextForm(mobileController, 'Mobile',
                    keyBoardType: TextInputType.phone),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  "Change Password",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 12,
                ),
                customTextForm(changePasswordController, '***********',
                    prefixText: 'Change Password'),
                const SizedBox(
                  height: 14,
                ),
                const SizedBox(
                  height: 100,
                ),
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
      {TextInputType? keyBoardType, String? prefixText}) {
    return TextFormField(
      controller: controller,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        suffix: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
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
        contentPadding: const EdgeInsets.only(left: 18, top: 9, bottom: 8),
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
