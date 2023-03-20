import 'package:dream_11_app/src/onboarding_screen/loginScreen/forgotPasswordScreen.dart';
import 'package:dream_11_app/src/onboarding_screen/loginScreen/loginScreen.dart';
import 'package:dream_11_app/utility/assets/images.dart';
import 'package:dream_11_app/widget/buttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
  Widget build(BuildContext context){
  late double hsize = MediaQuery.of(context).size.height;
  late double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: hsize*1,
        width:  wsize*1,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetUtilities.onBoardingBackGroundImage),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.only(left: wsize*0.03, right: wsize*0.03),
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
                  'Resister',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Imprima"),
                ),
                 SizedBox(
                  height: hsize*0.03 ,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(left:wsize*0.03, bottom: hsize*0.012),
                      child: AutoSizeText(
                        "Email Address",
                        style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(emailController,context,'Enter your email'),
                    SizedBox(
                      height: hsize*0.02,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left:wsize*0.03, bottom: hsize*0.012),
                      child: AutoSizeText(
                        "Mobile Number",
                        style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(
                        mobileNumberController, context,'Enter your mobile number'),
                    SizedBox(
                      height: hsize*0.02,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left:wsize*0.03, bottom: hsize*0.012),
                      child: AutoSizeText(
                        "Your team name",
                        style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(
                        teamNameController,context, 'Enter your Team Name'),
                    SizedBox(
                      height: hsize*0.02,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left:wsize*0.03, bottom: hsize*0.012),
                      child: AutoSizeText(
                        "Password",
                        style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(
                        confirmPassController, context,'Enter your password'),
                    SizedBox(
                      height: hsize*0.02,
                    ),
                     Padding(
                      padding: EdgeInsets.only(left:wsize*0.03, bottom: hsize*0.012),
                      child: AutoSizeText(
                        "Confirm Password",
                        style: TextStyle(fontSize: 16,fontFamily: "Imprima"),
                      ),
                    ),
                    customTextFormField(emailController, context,'Confirm Password'),
                    SizedBox(
                      height: hsize*0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Checkbox(
                            value: isSelected,
                            onChanged: ((value) {
                              isSelected = value!;
                              setState(() {});
                            })),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AutoSizeText(
                              maxLines: 1,
                              "I clarify that I am above 18 years by",
                              style: TextStyle(fontFamily: "Imprima",
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 15),
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: Row(children: [
                                  const AutoSizeText(
                                    'registering, I agree to ',
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 15,fontFamily: "Imprima"),
                                  ),
                                  GestureDetector(
                                    onTap: () {

                                    },
                                    child: const AutoSizeText(
                                      'T&Cs .',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.underline,
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 15,fontFamily: "Imprima"),
                                    ),
                                  ),
                                ]))
                          ],
                        )
                      ],
                    ),
                     SizedBox(
                      height: hsize*0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.to(ForGotPasswordScreen());
                            },
                            child: customButton("CREATE ACCOUNT", context,radius: 30,height:0.04,width:0.4 )),

                        const AutoSizeText(
                          "OR",
                          style: TextStyle(fontSize: 18,fontFamily: "Imprima"),
                        ),

                        GestureDetector(
                            onTap: () {
                              Get.to(LoginPage());
                             // Navigator.push(context, MaterialPageRoute(builder: (context) {return LoginPage();}));
                            },
                            child: customButton("Sign in", context,radius: 30,height:0.04,width:0.4)),
                      ],
                    ),
                     SizedBox(
                      height:hsize*0.04,
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
