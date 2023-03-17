import 'package:dream_11_app/src/onboarding_screen/loginScreen/changePasswordScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();

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
                  'Forgot Password',
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
                            "Email",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            "  OR",
                            style: TextStyle(fontSize: 16, color: Colors.red),
                          ),
                          Text(
                            "  phone",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    customTextFormField(
                      emailController,
                      context,'Enter your email OR Phone Number',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: GestureDetector(
                            child: const Text(
                              "Verify Email OR Phone",
                              style: TextStyle(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25, bottom: 10),
                      child: Text(
                        "Enter your OTP",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    customTextFormField(otpController, context,'Enter your OTP hear'),
                    const SizedBox(
                      height: 15,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Center(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ChangePasswordScreen();
                              }));
                            },
                            child: innerShadowButtonWidget("Send",context, radius: 0))),
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
