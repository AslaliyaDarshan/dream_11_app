import 'package:dream_11_app/src/onboarding_screen/loginScreen/changePasswordScreen.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/forgotPasswordScreen.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/singUpScreen.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/term&conditionScreen.dart';
import 'package:dream_11_app/src/user/aadhar_card/aadhar_card.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/assets/srings.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    late double hsize = MediaQuery.of(context).size.height;
    late double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  'LOGIN',
                  style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        loginSignUpButton(context, AssetUtilities.facebook,
                            "Facebook", () {}),
                         SizedBox(
                          width: wsize*0.06,
                        ),
                        loginSignUpButton(
                            context, AssetUtilities.google, "Google", () {})
                      ],
                    ),
                  ),
                ),
                 SizedBox(
                  height: hsize*0.04,
                ),
                const Text("Or"),
                 SizedBox(
                  height: hsize*0.03,
                ),
                Column(
                 // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: AutoSizeText(
                        "Email",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    customTextFormField(emailController,context, 'Enter your email'),
                     SizedBox(
                      height: hsize*0.02,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 10),
                      child: AutoSizeText(
                        "Password",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    customTextFormField(
                        passwordController, context,'Enter your password'),
                     SizedBox(
                      height: hsize*0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ForGotPasswordScreen();
                              }));
                            },
                            child:  Text(
                              Strings.forgotPasswordText,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.6)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.eighteenPlus,
                          height: 18,
                          width: 18,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              Strings.conditionText,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: 10),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Get.to(TermConditionScreen());
                                },
                                child: Row(children: [
                                  const Text(
                                    'T&C',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 0, 0, 0.6),
                                        fontSize: 10),
                                  ),
                                  const Text(
                                    ' &',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: 10),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const TermConditionScreen();
                                      }));
                                    },
                                    child: Row(
                                      children: const [
                                        Text(
                                          ' Privacy Policy',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 0, 0, 0.6),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  )
                                ]))
                          ],
                        )
                      ],
                    ),
                     SizedBox(
                      height:hsize*0.05,
                    ),
                    Center(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(builder: (context) {
                                return const AadharCard();
                              }), (route) => false);
                            },
                            child: innerShadowButtonWidget("Login",context,height: 0.04,width: 0.6))),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have account?",
                          style: TextStyle(fontSize: 10),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(SingUpScreen());
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color.fromRGBO(51, 0, 255, 1),
                                fontSize: 10),
                          ),
                        ),
                      ],
                    ),
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
