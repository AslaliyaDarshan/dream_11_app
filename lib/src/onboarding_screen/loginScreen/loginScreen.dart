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
        height: hsize*1,
        width:  wsize*1,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                fit: BoxFit.fill)),
        child: Padding(
          padding: EdgeInsets.only(left: wsize*0.03, right: wsize*0.03),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(
                  height: hsize*0.04,
                ),
                Image.asset(
                  AssetUtilities.cricketSwitchLogo,
                  height:hsize*0.2,
                  width: wsize*0.4,
                ),
                const AutoSizeText(
                  'LOGIN',
                  style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: hsize*0.04,
                ),
                Center(
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
                 SizedBox(
                  height: hsize*0.03,
                ),
                const AutoSizeText("OR"),
                 SizedBox(
                  height: hsize*0.015,
                ),
                Column(
                 // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(left: wsize*0.032, bottom: hsize*0.015),
                      child: AutoSizeText(
                        "Email",
                        style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(emailController,context, 'Enter your email'),
                     SizedBox(
                      height: hsize*0.02,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: wsize*0.032, bottom: hsize*0.015),
                      child: AutoSizeText(
                        "Password",
                        style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(passwordController, context,'Enter your password'),
                     SizedBox(
                      height: hsize*0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right: wsize*0.03),
                          child: InkWell(
                            onTap: () {
                             // Navigator.push(context, MaterialPageRoute(builder: (context) {return const ForGotPasswordScreen();}));
                            },
                            child:  AutoSizeText(
                              Strings.forgotPasswordText,
                              style: TextStyle(fontFamily: "Imprima",
                                  color: Color.fromRGBO(0, 0, 0, 0.6)),
                            ),
                          ),
                        ),
                      ],
                    ),
                     SizedBox(
                      height: hsize*0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AssetUtilities.eighteenPlus,
                          height: hsize*0.03,
                          width: hsize*0.03,
                        ),
                         SizedBox(
                          width: wsize*0.035,
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AutoSizeText(
                              Strings.conditionText,
                              style: TextStyle(fontFamily: "Imprima",
                                  color: Color.fromRGBO(0, 0, 0, 0.6),
                                  fontSize: 10),
                            ),
                            InkWell(
                                onTap: () {
                                  Get.to(TermConditionScreen());
                                },
                                child: Row(children: [
                                  const AutoSizeText(
                                    'T&C',
                                    style: TextStyle(fontFamily: "Imprima",
                                        color: Color.fromRGBO(255, 0, 0, 0.6),
                                        fontSize: 10),
                                  ),
                                  const AutoSizeText(
                                    ' &',
                                    style: TextStyle(fontFamily: "Imprima",
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: 10),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.offAll(TermConditionScreen());
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) {return const TermConditionScreen();}));
                                    },
                                    child: Row(
                                      children: const [
                                        AutoSizeText(
                                          ' Privacy Policy',
                                          style: TextStyle(fontFamily: "Imprima",
                                              color: Color.fromRGBO(
                                                  255, 0, 0, 0.6),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  )
                                ])),
                          ],
                        )
                      ],
                    ),
                     SizedBox(
                      height:hsize*0.03,
                    ),
                    Center(
                        child: InkWell(
                            onTap: () {
                              Get.offAll(AadharCard());
                             // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {return const AadharCard();}), (route) => false);
                            },
                            child: innerShadowButtonWidget("Login",context,height: 0.04,width: 0.6))),
                     SizedBox(
                      height: hsize*0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const AutoSizeText(
                          "Don't have account?",
                          style: TextStyle(fontSize: 10,fontFamily: "Imprima"),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(SingUpScreen());
                          },
                          child: AutoSizeText(
                            'Sign Up',
                            style: TextStyle(
                                fontFamily: "Imprima",
                              fontWeight: FontWeight.bold,
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
