import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Image.asset(
                  AssetUtilities.cricketSwitchLogo,
                  height: 160,
                  width: 160,
                ),
                const Text(
                  'Change Password',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, bottom: 10),
                      child: Row(
                        children: const [
                          Text(
                            "Old Password",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    customTextFormField(
                      oldPasswordController,
                      context,'Enter your old Password',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25, bottom: 10),
                      child: Text(
                        "New Password",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    customTextFormField(
                        newPasswordController,context, 'Enter your new Password'),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25, bottom: 10),
                      child: Text(
                        "Confirm Password",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    customTextFormField(
                        newPasswordController,context, 'Enter your confirm Password'),
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                        "Your password should be a minimum of a characters with at least 1 number or special Character.",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center),
                    const SizedBox(
                      height: 90,
                    ),
                    Center(child: innerShadowButtonWidget("Send",context, radius: 20)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
