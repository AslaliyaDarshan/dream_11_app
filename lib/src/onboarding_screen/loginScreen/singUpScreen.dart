import 'package:dream_11_app/src/onboarding_screen/loginScreen/loginScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/utility/assets/srings.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController teamNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  bool isSelected = false;
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
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
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
                    'Resister',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          "Email Address",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      customTextFormField(emailController, context,'Enter your email'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      customTextFormField(
                          emailController, context,'Enter your mobile number'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          "Your team name",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      customTextFormField(
                          emailController,context, 'Enter your Team Name'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          "Password",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      customTextFormField(
                          emailController, context,'Enter your password'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          "Confirm Password",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      customTextFormField(emailController, context,'Confirm Password'),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: isSelected,
                              onChanged: ((value) {
                                isSelected = value!;
                                setState(() {});
                              })),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "I clarify that I am above 18 years by",
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 16),
                              ),
                              GestureDetector(
                                  onTap: () {},
                                  child: Row(children: [
                                    const Text(
                                      ' registering, I agree to ',
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 16),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        'T&Cs .',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontSize: 16),
                                      ),
                                    ),
                                  ]))
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child:
                                  customButton("CREATE ACCOUNT", radius: 30)),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "OR",
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginPage();
                                }));
                              },
                              child: customButton("Sign in", radius: 30)),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
